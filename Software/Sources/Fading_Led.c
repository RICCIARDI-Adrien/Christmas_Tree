/** @file Fading_Led.c
 * See Fading_Led.h for description.
 * @author Adrien RICCIARDI
 */
#include <Fading_Led.h>

//-------------------------------------------------------------------------------------------------
// Private constants
//-------------------------------------------------------------------------------------------------
/** How many channels to handle. */
#define FADING_LEDS_COUNT (sizeof(Fading_Leds) / sizeof(TFadingLed)) // TODO remove

//-------------------------------------------------------------------------------------------------
// Private types
//-------------------------------------------------------------------------------------------------
/** A light bulb controlled by software PWM. */
typedef struct
{
	volatile unsigned char *Pointer_Port; //!< The port the pin belongs to.
	unsigned char Pin_Number; //!< The pin number in the port.
} TFadingLed;

//-------------------------------------------------------------------------------------------------
// Private variables
//-------------------------------------------------------------------------------------------------
/** All available channels. */
static TFadingLed Fading_Leds[FADING_LED_IDS_COUNT] =
{
	// Bulb 0
	{
		&LATC,
		2
	}
};

//-------------------------------------------------------------------------------------------------
// Private functions
//-------------------------------------------------------------------------------------------------
/** Turn a specific led on.
 * @param Led_ID Which led to turn on.
 */
static inline void FadingLedSetPin(unsigned char Led_ID)
{
	*(Fading_Leds[Led_ID].Pointer_Port) |= 1 << Fading_Leds[Led_ID].Pin_Number;
}

/** Turn a specific led off.
 * @param Led_ID Which led to turn off.
 */
static inline void FadingLedClearPin(unsigned char Led_ID)
{
	*(Fading_Leds[Led_ID].Pointer_Port) &= ~(1 << Fading_Leds[Led_ID].Pin_Number);
}

//-------------------------------------------------------------------------------------------------
// Public functions
//-------------------------------------------------------------------------------------------------
void FadingLedInitialize(void)
{
	// Initialize all channels pins as output TODO
	// TEST
	ANSELCbits.ANSC2 = 0;
	TRISCbits.TRISC2 = 0;
	
	// Use timer 1 to generate a PWM base frequency of about 244Hz
	TMR1H = 0x80; // Preload timer to achieve the desired frequency
	TMR1L = 0;
	T1CON = 0x02; // Use Fosc/4 as clock source, do not enable prescaler, enable 16-bit timer mode, do not enable timer
	
	// Set timer 1 interrupt as high priority
	IPR1bits.TMR1IP = 1;
	PIE1bits.TMR1IE = 1;
	
	// Enable timers
	T1CONbits.TMR1ON = 1;
}

void FadingLedInterruptHighPriority(void)
{
	// TEST
	static int a = 0;
	if (a) FadingLedSetPin(0);
	else FadingLedClearPin(0);
	a = !a;
	
	// Preload timer to achieve the desired frequency
	TMR1H = 0x80;
	TMR1L = 0;
	
	// Clear interrupt flag
	PIR1bits.TMR1IF = 0;
}
