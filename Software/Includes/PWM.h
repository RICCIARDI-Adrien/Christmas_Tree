/** @file PWM.h
 * Manage 4 separate PWM channels, one for each tree fading block.
 * @author Adrien RICCIARDI
 */
#ifndef H_PWM_H
#define H_PWM_H

//-------------------------------------------------------------------------------------------------
// Types
//-------------------------------------------------------------------------------------------------
/** All available channels. */
typedef enum
{
	PWM_CHANNEL_ID_STAR, // Use CCP1 module on RC2 pin
	PWM_CHANNEL_ID_RED_FAIRY_LIGHTS, // Use CCP2 module on RC1 pin
	PWM_CHANNEL_ID_BLUE_FAIRY_LIGHTS, // Use CCP3 module on RB5 pin
	PWM_CHANNEL_ID_YELLOW_FAIRY_LIGHTS, // Use CCP5 module on RA4 pin
	PWM_CHANNEL_IDS_COUNT
} TPWMChannelID;

//-------------------------------------------------------------------------------------------------
// Functions
//-------------------------------------------------------------------------------------------------
/** Initialize all PWM channels and start producing signals. */
void PWMInitialize(void);

#endif
