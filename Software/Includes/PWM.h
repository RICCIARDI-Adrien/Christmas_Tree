/** @file PWM.h
 * Manage 4 separate PWM channels, one for each tree fading block.
 * @author Adrien RICCIARDI
 */
#ifndef H_PWM_H
#define H_PWM_H

//-------------------------------------------------------------------------------------------------
// Constants
//-------------------------------------------------------------------------------------------------
/** Maximum PWM duty cycle period. When setting this period, the PWM pin is always set. */
#define PWM_MAXIMUM_DUTY_CYCLE_VALUE 1023

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

/** Set a specific channel duty cycle period.
 * @param Channel_ID The channel to configure.
 * @param Duty_Cycle_Period How many time the channel pin remains set. Setting value 0 makes the pin stay always low, setting value PWM_MAXIMUM_DUTY_CYCLE_VALUE makes the pin stay always high.
 */
void PWMSetDutyCycle(TPWMChannelID Channel_ID, unsigned short Duty_Cycle_Period);

#endif
