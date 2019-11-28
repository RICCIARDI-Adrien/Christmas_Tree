/** @file Fading_Led.c
 * See Fading_Led.h for description.
 * @author Adrien RICCIARDI
 */
#include <Fading_Led.h>

//-------------------------------------------------------------------------------------------------
// Private types
//-------------------------------------------------------------------------------------------------
/** A light bulb controlled by software PWM. */
typedef struct
{
	volatile unsigned char *Pointer_Port; //!< The port the pin belongs to.
	unsigned char Pin_Number; //!< The pin number in the port.
	unsigned char Current_PWM_Duty_Cycle_Percentage; //!< Duty cycle value in range [0; 100].
	unsigned short Current_PWM_Duty_Cycle_Period; //!< The time the pin will be set (in PWM base frequency timer units). This variable is updated atomically when a PWM cycle terminates to avoid flickering.
	unsigned char Requested_PWM_Duty_Cycle_Percentage; //!< The desired duty cycle value in range [0; 100]. The new value will be effective at the beginning of the next PWM cycle.
	unsigned short Requested_PWM_Duty_Cycle_Period; //!< The new desired duty cycle period. The new value will be effective at the beginning of the next PWM cycle. See Current_PWM_Duty_Cycle_Period for more information.
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
		2,
		0,
		0,
		0,
		0
	}
};

//-------------------------------------------------------------------------------------------------
// Private functions
//-------------------------------------------------------------------------------------------------
/** Turn a specific led on.
 * @param Led_ID Which led to turn on.
 */
static inline void FadingLedSetPin(TFadingLedID Led_ID)
{
	*(Fading_Leds[Led_ID].Pointer_Port) |= 1 << Fading_Leds[Led_ID].Pin_Number;
}

/** Turn a specific led off.
 * @param Led_ID Which led to turn off.
 */
static inline void FadingLedClearPin(TFadingLedID Led_ID)
{
	*(Fading_Leds[Led_ID].Pointer_Port) &= ~(1 << Fading_Leds[Led_ID].Pin_Number);
}

/** Retrieve pin state.
 * @param Led_ID The led to retrieve state.
 * @return 0 if pin is cleared,
 * @return 1 if pin is set.
 */
static inline unsigned char FadingLedGetPinValue(TFadingLedID Led_ID)
{
	if (*(Fading_Leds[Led_ID].Pointer_Port) & (1 << Fading_Leds[Led_ID].Pin_Number)) return 1;
	return 0;
}

/** Configure timer 3 to trigger an interrupt when the next PWM channel duty cycle period is elapsed. */
static void FadingLedConfigureNextDutyCyclePeriodEnd(void)
{
	unsigned char i;
	unsigned short Shortest_Period = 0xFFFF, Period;
	
	// Find the channel that has the smaller PWM value and is still active
	for (i = 0; i < FADING_LED_IDS_COUNT; i++)
	{
		// Do not take account channels which period is elapsed yet
		if (FadingLedGetPinValue(i) == 1)
		{
			Period = Fading_Leds[i].Current_PWM_Duty_Cycle_Period;
			if (Period < Shortest_Period) Shortest_Period = Period;
		}
	}
	
	// There is no other channel to clear, stop timer until next cycle
	if ((Shortest_Period == 0) || (Shortest_Period == 0xFFFF)) PIE2bits.TMR3IE = 0;
	else
	{
		// A channel to clear has been found, preload the timer with the remaining time
		Period = 0xFFFF - Shortest_Period; // Timer triggers an interrupt when crossing 0, so preload it with the only remaining time before overflowing
		TMR3H = Period >> 8;
		TMR3L = (unsigned char) Period;
		
		// Enable timer interrupt
		PIE2bits.TMR3IE = 1;
		
		// Start timer
		T3CONbits.TMR3ON = 1;
	}
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
	TMR1H = 0;
	TMR1L = 0;
	T1CON = 0x02; // Use Fosc/4 as clock source, do not enable prescaler, enable 16-bit timer mode, do not enable timer
	
	// Set timer 1 interrupt as high priority
	IPR1bits.TMR1IP = 1;
	PIE1bits.TMR1IE = 1;
	
	// Use timer 3 to turn channels pins off
	T3CON = 0x02; // Use Fosc/4 as clock source, do not enable prescaler, enable 16-bit timer mode, do not enable timer
	
	// Set timer 3 interrupt as high priority
	IPR2bits.TMR3IP = 1;
	PIE2bits.TMR3IE = 1;
	
	// Enable timer 1 only, timer 3 will be automatically enabled by timer 1 interrupt handler
	T1CONbits.TMR1ON = 1;
}

void FadingLedSetDutyCycle(TFadingLedID Led_ID, unsigned short Period)
{
	// Turn timer 1 interrupt off to atomically change the requested period (as this function is called from less priority context)
	PIE1bits.TMR1IE = 0;
	
	Fading_Leds[Led_ID].Requested_PWM_Duty_Cycle_Period = Period;
	
	// Re-enable timer 1 interrupt
	PIE1bits.TMR1IE = 1;
}

void FadingLedInterruptHandlerHighPriority1(void)
{
	unsigned char i, PWM_Duty_Cycle_Percentage;
	unsigned short PWM_Duty_Cycle_Period;
	
	// Set all channels pins
	for (i = 0; i < FADING_LED_IDS_COUNT; i++)
	{
		// Update duty cycle values now that cycle is terminated
		PWM_Duty_Cycle_Percentage = Fading_Leds[i].Requested_PWM_Duty_Cycle_Percentage;
		PWM_Duty_Cycle_Period = Fading_Leds[i].Requested_PWM_Duty_Cycle_Period;
		Fading_Leds[i].Current_PWM_Duty_Cycle_Percentage = PWM_Duty_Cycle_Percentage;
		Fading_Leds[i].Current_PWM_Duty_Cycle_Period = PWM_Duty_Cycle_Period;
		
		// Set channel pin only if duty cycle is not zero
		if (PWM_Duty_Cycle_Period > 0) FadingLedSetPin(i);
	}
	
	// Prepare channels pin clearing timer
	FadingLedConfigureNextDutyCyclePeriodEnd();
	
	// Clear interrupt flag
	PIR1bits.TMR1IF = 0;
}

void FadingLedInterruptHandlerHighPriority2(void)
{
	unsigned char i;
	unsigned short Current_Period;
	
	// Cache base frequency period
	Current_Period = TMR1L;
	Current_Period |= TMR1H << 8;
	
	// Check all channels to determine the ones that are over
	for (i = 0; i < FADING_LED_IDS_COUNT; i++)
	{
		if (Fading_Leds[i].Current_PWM_Duty_Cycle_Period <= Current_Period) FadingLedClearPin(i);
	}
	
	// Prepare next channels pin clearing timer
	FadingLedConfigureNextDutyCyclePeriodEnd();
	
	// Clear interrupt flag
	PIR2bits.TMR3IF = 0;
}
