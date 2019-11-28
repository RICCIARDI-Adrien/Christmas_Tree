/** @file Fading_Led.c
 * See Fading_Led.h for description.
 * @author Adrien RICCIARDI
 */
#include <Fading_Led.h>
#include <xc.h>

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
static TFadingLed Fading_Leds[] =
{
	// Bulb 0
	{
		&LATC,
		2
	}
};

//-------------------------------------------------------------------------------------------------
// Public functions
//-------------------------------------------------------------------------------------------------
void FadingLedInitialize(void)
{
	// Initialize all channels pins as output TODO
	// TEST
	ANSELCbits.ANSC2 = 0;
	TRISCbits.TRISC2 = 0;
	
	while (1)
	{
		*(Fading_Leds[0].Pointer_Port) |= 1 << Fading_Leds[0].Pin_Number;
		__delay_ms(500);
		*(Fading_Leds[0].Pointer_Port) &= ~(1 << Fading_Leds[0].Pin_Number);
		__delay_ms(500);
	}
}
