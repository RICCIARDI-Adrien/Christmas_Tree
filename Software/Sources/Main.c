/** @file Main.c
 * Handle light bulbs fading cycles.
 * @author Adrien RICCIARDI
 */
#include <Fading_Led.h>
#include <xc.h>

//-------------------------------------------------------------------------------------------------
// Microcontroller configuration
//-------------------------------------------------------------------------------------------------
// CONFIG1H register
#pragma config FOSC = INTIO67, PLLCFG = ON, PRICLKEN = ON, FCMEN = OFF, IESO = OFF // Use internal oscillator, multiply oscillator frequency by 4 by enabling the PLL, enable primary clock, disable fail-safe clock monitor, disable oscillator switchover mode
// CONFIG2L register
#pragma config PWRTEN = ON, BOREN = SBORDIS, BORV = 285 // Enable power up timer, enable brown-out reset in hardware only (so it can't be disabled by software), set highest value for brown-out voltage (2.85V)
// CONFIG2H register
#pragma config WDTEN = OFF // Disable watchdog timer
// CONFIG3H register
#pragma config PBADEN = OFF, HFOFST = OFF, MCLRE = EXTMCLR // Port B pin 5..0 are configured as digital I/O on reset, wait for the oscillator to become stable before starting executing code, enable MCLR pin
// CONFIG4L register
#pragma config STVREN = ON, LVP = OFF, XINST = OFF, DEBUG = OFF // Reset on stack underflow or overflow, disable single supply ICSP, disable extended instruction set, disable background debug
// CONFIG5L register
#pragma config CP0 = OFF, CP1 = OFF // Disable all code protections
// CONFIG5H register
#pragma config CPB = OFF, CPD = OFF // Disable boot block code protection, disable data EEPROM code protection
// CONFIG6L register
#pragma config WRT0 = OFF, WRT1 = OFF // Disable all write protections
// CONFIG6H register
#pragma config WRTC = OFF, WRTB = OFF, WRTD = OFF // Disable configuration registers write protection, disable boot block write protection, disable data EEPROM write protection
// CONFIG7L register
#pragma config EBTR0 = OFF, EBTR1 = OFF // Disable all table read protections
// CONFIG7H register
#pragma config EBTRB = OFF // Disable boot block table read protection

/** Oscillator frequency in Hz (needed by software delay routines). */
#define _XTAL_FREQ 64000000

//-------------------------------------------------------------------------------------------------
// Private constants
//-------------------------------------------------------------------------------------------------
/** Minimum brightness value (in PWM duty cycle period unit). */
#define MAIN_MINIMUM_BRIGHTNESS_PWM_DUTY_CYCLE_PERIOD 1000

//-------------------------------------------------------------------------------------------------
// Private types
//-------------------------------------------------------------------------------------------------
/** A led can be in different states. Here are all allowed states. */
typedef enum
{
	MAIN_SHINING_LED_STATE_INCREASE_BRIGHTNESS, //!< Brightness is increasing up to maximum value.
	MAIN_SHINING_LED_STATE_DECREASE_BRIGHTNESS, //!< Brightness is decreasing up to minimum value.
	MAIN_SHINING_LED_STATE_TURNED_OFF_PAUSE //!< Due to human eye logarithmic functioning, led minimum brightness value seems to last less than maximum brightness one, so add some delay when minimum brightness is reached
} TMainShiningLedState;

/** Allow to shine each led separately. */
typedef struct
{
	unsigned short PWM_Duty_Cycle_Period; //!< The led current duty cycle.
	TMainShiningLedState State; //!< The led current state.
} TMainShiningLed;

//-------------------------------------------------------------------------------------------------
// Private variables
//-------------------------------------------------------------------------------------------------
/** All the leds that will shine. */
static TMainShiningLed Main_Shining_Leds[FADING_LED_IDS_COUNT]; // This static variable will be initialized to zero at boot, so default state will be MAIN_SHINING_LED_STATE_INCREASE_BRIGHTNESS

//-------------------------------------------------------------------------------------------------
// Private functions
//-------------------------------------------------------------------------------------------------
/** Entry point for all high priority interrupts. */
static void __interrupt high_priority MainInterruptHandlerHighPriority(void)
{
	if (FADING_LED_HAS_HIGH_PRIORITY_INTERRUPT_1_FIRED()) FadingLedInterruptHandlerHighPriority1();
	if (FADING_LED_HAS_HIGH_PRIORITY_INTERRUPT_2_FIRED()) FadingLedInterruptHandlerHighPriority2();
}

//-------------------------------------------------------------------------------------------------
// Entry point
//-------------------------------------------------------------------------------------------------
void main(void)
{
	unsigned char i;
	TMainShiningLed *Pointer_Shining_Led;
	
	// Set oscillator frequency to 64MHz
	OSCCON = 0x78; // Core enters sleep mode when issuing a SLEEP instruction, select 16MHz frequency for high frequency internal oscillator, device is running from primary clock (set as "internal oscillator" in configuration registers)
	while (!OSCCONbits.HFIOFS); // Wait for the internal oscillator to stabilize
	OSCCON2 = 0x04; // Turn off secondary oscillator, enable primary oscillator drive circuit
	OSCTUNEbits.PLLEN = 1; // Enable 4x PLL
	
	// Initialize all modules
	FadingLedInitialize();
	
	// Enable interrupts
	RCONbits.IPEN = 1; // Enable interrupt priorities
	INTCONbits.GIE = 1; // Enable high priority interrupts
	INTCONbits.PEIE = 1; // Enable low priority interrupts
	
	// Make bulbs and star shine
	while (1)
	{
		// Handle all leds
		for (i = 0; i < FADING_LED_IDS_COUNT; i++)
		{
			// Cache led access
			Pointer_Shining_Led = &Main_Shining_Leds[i];
			
			// Handle current led state
			switch (Pointer_Shining_Led->State)
			{
				case MAIN_SHINING_LED_STATE_INCREASE_BRIGHTNESS:
					// Maximum brightness has not been reached, continue increasing it
					if (Pointer_Shining_Led->PWM_Duty_Cycle_Period < 0xFFFF) Pointer_Shining_Led->PWM_Duty_Cycle_Period++;
					// Maximum brightness has been reached, go to next step
					else Pointer_Shining_Led->State = MAIN_SHINING_LED_STATE_DECREASE_BRIGHTNESS; // A state machine cycle is lost by doing this way but this does not matter here
					
					// Update led
					FadingLedSetDutyCycle(i, Pointer_Shining_Led->PWM_Duty_Cycle_Period);
					break;
					
				case MAIN_SHINING_LED_STATE_DECREASE_BRIGHTNESS:
					// Minimum brightness has not been reached, continue decreasing it
					if (Pointer_Shining_Led->PWM_Duty_Cycle_Period > MAIN_MINIMUM_BRIGHTNESS_PWM_DUTY_CYCLE_PERIOD) Pointer_Shining_Led->PWM_Duty_Cycle_Period--;
					// Minimum brightness has been reached, got to next step
					else Pointer_Shining_Led->State = MAIN_SHINING_LED_STATE_TURNED_OFF_PAUSE;
						
					// Update led
					FadingLedSetDutyCycle(i, Pointer_Shining_Led->PWM_Duty_Cycle_Period);
					break;
					
				case MAIN_SHINING_LED_STATE_TURNED_OFF_PAUSE:
					// Recycle duty cycle period to use as counter (when entering this state the first time, right after MAIN_SHINING_LED_STATE_DECREASE_BRIGHTNESS, duty cycle period is always 0)
					if (Pointer_Shining_Led->PWM_Duty_Cycle_Period < 12000) Pointer_Shining_Led->PWM_Duty_Cycle_Period++;
					// Enough time has been spent, increase brightness
					else
					{
						Pointer_Shining_Led->PWM_Duty_Cycle_Period = MAIN_MINIMUM_BRIGHTNESS_PWM_DUTY_CYCLE_PERIOD; // Reset duty cycle to restart a brightness increase cycle
						Pointer_Shining_Led->State = MAIN_SHINING_LED_STATE_INCREASE_BRIGHTNESS;
					}
					break;
					
				default:
					break;
			}
		}
		
		// State machine tick
		__delay_us(50);
	}
}
