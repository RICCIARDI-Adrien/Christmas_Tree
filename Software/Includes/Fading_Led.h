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
/** Tell whether high priority interrupt 1 fired. */
#define FADING_LED_HAS_HIGH_PRIORITY_INTERRUPT_1_FIRED() ((PIE1bits.TMR1IE == 1) && (PIR1bits.TMR1IF == 1))
/** Tell whether high priority interrupt 2 fired. */
#define FADING_LED_HAS_HIGH_PRIORITY_INTERRUPT_2_FIRED() ((PIE2bits.TMR3IE == 1) && (PIR2bits.TMR3IF == 1))

//-------------------------------------------------------------------------------------------------
// Types
//-------------------------------------------------------------------------------------------------
/** All available channels. */
typedef enum
{
	FADING_LED_ID_BULB_0,
	FADING_LED_ID_BULB_1,
	FADING_LED_ID_BULB_2,
	FADING_LED_ID_BULB_3,
	FADING_LED_ID_BULB_4,
	FADING_LED_ID_BULB_5,
	FADING_LED_ID_BULB_6,
	FADING_LED_ID_BULB_7,
	FADING_LED_ID_BULB_8,
	FADING_LED_ID_BULB_9,
	FADING_LED_ID_STAR,
	FADING_LED_IDS_COUNT
} TFadingLedID;

//-------------------------------------------------------------------------------------------------
// Functions
//-------------------------------------------------------------------------------------------------
/** Configure all software PWM channels. */
void FadingLedInitialize(void);

/** Set a specific led duty cycle period.
 * @param Led_ID The led to configure.
 * @param Duty_Cycle_Period How many time the led remains lighted. 0 : turned off, 0xFFFF : always on.
 */
void FadingLedSetDutyCycle(TFadingLedID Led_ID, unsigned short Duty_Cycle_Period);

/** Must be called each time high priority 1 interrupt fires. */
void FadingLedInterruptHandlerHighPriority1(void);
/** Must be called each time high priority 2 interrupt fires. */
void FadingLedInterruptHandlerHighPriority2(void);

#endif
