/** @file Fading_Led.h
 * Generate enough software PWMs to be able to set the brightness of each light bulb led separately.
 * @author Adrien RICCIARDI
 */
#ifndef H_FADING_LED_H
#define H_FADING_LED_H

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

#endif
