/** @file Fading_Led.h
 * Generate enough software PWMs to be able to set the brightness of each light bulb led separately.
 * @author Adrien RICCIARDI
 */
#ifndef H_FADING_LED_H
#define H_FADING_LED_H

#include <xc.h>

//-------------------------------------------------------------------------------------------------
// Constants and macros
//-------------------------------------------------------------------------------------------------
/** Tell whether high priority interrupt fired. */
#define FADING_LED_HAS_HIGH_PRIORITY_INTERRUPT_FIRED() ((PIE1bits.TMR1IE == 1) && (PIR1bits.TMR1IF == 1))

//-------------------------------------------------------------------------------------------------
// Types
//-------------------------------------------------------------------------------------------------
/** All available channels. */
typedef enum
{
	FADING_LED_ID_BULB_0,
	FADING_LED_IDS_COUNT
} TFadingLedID;

//-------------------------------------------------------------------------------------------------
// Functions
//-------------------------------------------------------------------------------------------------
/** Configure all software PWM channels. */
void FadingLedInitialize(void);

/** TODO */
void FadingLedSetDutyCycle(TFadingLedID Led_ID, unsigned short Period);

/** Must be called each time high priority interrupt fires. */
void FadingLedInterruptHighPriority(void);

#endif
