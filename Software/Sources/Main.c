/** @file Main.c
 * Handle light bulbs fading cycles.
 * @author Adrien RICCIARDI
 */
#include <PWM.h>
#include <xc.h>

//-------------------------------------------------------------------------------------------------
// Microcontroller configuration
//-------------------------------------------------------------------------------------------------
// CONFIG1H register
#pragma config FOSC = INTIO67, PLLCFG = OFF, PRICLKEN = ON, FCMEN = OFF, IESO = OFF // Use internal oscillator, do not enable PLL, enable primary clock, disable fail-safe clock monitor, disable oscillator switchover mode
// CONFIG2L register
#pragma config PWRTEN = ON, BOREN = SBORDIS, BORV = 285 // Enable power up timer, enable brown-out reset in hardware only (so it can't be disabled by software), set highest value for brown-out voltage (2.85V)
// CONFIG2H register
#pragma config WDTEN = OFF // Disable watchdog timer
// CONFIG3H register
#pragma config CCP2MX = PORTC1, PBADEN = OFF, CCP3MX = PORTB5, HFOFST = OFF, MCLRE = EXTMCLR // Connect CCP2 module to RC1 pin, port B pin 5..0 are configured as digital I/O on reset, connect CCP3 module to RB5 pin, wait for the oscillator to become stable before starting executing code, enable MCLR pin
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

//-------------------------------------------------------------------------------------------------
// Private constants
//-------------------------------------------------------------------------------------------------
/** How many steps in the dimming curve. */
#define MAIN_DIMMING_VALUES_COUNT 64

//-------------------------------------------------------------------------------------------------
// Private types
//-------------------------------------------------------------------------------------------------
/** Allow to shine each led separately. */
typedef struct
{
	unsigned char Dimming_Value_Index; //!< How bright the led must be lighted.
	unsigned char Is_Index_Incrementing; //!< Tell whether led brightness must increase or decrease.
} TMainShiningLed;

//-------------------------------------------------------------------------------------------------
// Private variables
//-------------------------------------------------------------------------------------------------
/** All the leds that will shine. */
static TMainShiningLed Main_Shining_Leds[PWM_CHANNEL_IDS_COUNT] =
{
	// PWM_CHANNEL_ID_STAR
	{
		0,
		1
	},
	// PWM_CHANNEL_ID_RED_FAIRY_LIGHTS
	{
		16,
		1
	},
	// PWM_CHANNEL_ID_BLUE_FAIRY_LIGHTS
	{
		32,
		1
	},
	// PWM_CHANNEL_ID_YELLOW_FAIRY_LIGHTS
	{
		48,
		1
	}
};

/** Exponential look-up table, computed to make the brightness variations linear to an human eye.
 * The following LibreOffice Calc formula was used to compute this table : =ROUND(((A28/63)^EXP(1))*1023)
 * Column A contains the look-up table index (here, A28=0, A29=1, A30=2...). Value 63 is the last array index, value 1023 is the maximum PWM value.
 */
static unsigned short Main_Dimming_Values[] =
{
	   0,    0,    0,    0,    1,    1,    2,    3,
	   4,    5,    7,    9,   11,   14,   17,   21,
	  25,   29,   34,   39,   45,   52,   59,   66,
	  74,   83,   92,  102,  113,  124,  136,  149,
	 162,  176,  191,  207,  223,  241,  259,  278,
	 298,  318,  340,  362,  386,  410,  435,  461,
	 488,  517,  546,  576,  607,  639,  673,  707,
	 743,  779,  817,  856,  896,  937,  979, 1023
};

//-------------------------------------------------------------------------------------------------
// Entry point
//-------------------------------------------------------------------------------------------------
void main(void)
{
	unsigned char i;
	TMainShiningLed *Pointer_Shining_Led;
	
	// Set oscillator frequency to 4MHz
	OSCCON = 0x52; // Set a 4MHz internal oscillator frequency, select internal oscillator block
	
	// Initialize all modules
	PWMInitialize();

	// Make fairy lights and star shine
	while (1)
	{
		// Handle all leds
		for (i = 0; i < PWM_CHANNEL_IDS_COUNT; i++)
		{
			// Cache led access
			Pointer_Shining_Led = &Main_Shining_Leds[i];
			
			// Set current led brightness
			PWMSetDutyCycle(i, Main_Dimming_Values[Pointer_Shining_Led->Dimming_Value_Index]);
			
			// Update value index
			if (Pointer_Shining_Led->Is_Index_Incrementing)
			{
				// Keep incrementing
				Pointer_Shining_Led->Dimming_Value_Index++;
				// Prepare for decrementing next time if last dimming value has been reached
				if (Pointer_Shining_Led->Dimming_Value_Index >= 63) Pointer_Shining_Led->Is_Index_Incrementing = 0;
			}
			else
			{
				// Keep decrementing
				Pointer_Shining_Led->Dimming_Value_Index--;
				// Prepare for incrementing next time if first dimming value has been reached
				if (Pointer_Shining_Led->Dimming_Value_Index == 0) Pointer_Shining_Led->Is_Index_Incrementing = 1;
			}
		}
		
		// Keep led brightness a little
		__delay_ms(80);
	}
}
