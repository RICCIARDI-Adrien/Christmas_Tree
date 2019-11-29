/** @file PWM.c
 * See PWM.h for description.
 * @author Adrien RICCIARDI
 */
#include <PWM.h>
#include <xc.h>

//-------------------------------------------------------------------------------------------------
// Public functions
//-------------------------------------------------------------------------------------------------
void PWMInitialize(void)
{
	// Configure CCP1 PWM as a single PWM (it's an enhanced full-bridge one)
	CCP1CON = 0x0C; // Enable single output mode, select PWM mode
	ECCP1AS = 0; // Disable auto-shutdown feature
	
	// Configure CCP2 PWM as a single PWM (it's an enhanced half-bridge one)
	CCP2CON = 0x0C; // Enable single output mode, select PWM mode
	ECCP2AS = 0; // Disable auto-shutdown feature
	
	// Configure CCP3 PWM as a single PWM (it's an enhanced half-bridge one)
	CCP3CON = 0x0C; // Enable single output mode, select PWM mode
	ECCP3AS = 0; // Disable auto-shutdown feature
	
	// Configure CCP5 PWM (it's standard one)
	CCP5CON = 0x0C; // Select PWM mode
	
	// Use timer 2 to clock all PWM modules
	CCPTMRS0 = 0; // Select timer 2 as clock source for CCP1, CCP2 and CCP3
	CCPTMRS1 = 0; // Select timer 2 as clock source for CCP5
	
	// Configure timer 2 to generate a PWM period of about 244Hz
	TMR2 = 0;
	PR2 = 255; // Divide oscillator clock by 4 (timer clock input), then by 16 (prescaler), then by 256 (this register value)
	T2CON = 0x06; // Select no postscaler as it is not used in PWM mode, select 1:16 prescaler, enable timer
	
	// Configure all channels pins now that PWM are operational
	// Set all ports pins as digital
	ANSELA = 0;
	ANSELB = 0;
	ANSELC = 0;
	// Set all ports pins as output
	TRISA = 0;
	TRISB = 0;
	TRISC = 0;
	
	// TEST
	CCPR1L = 512 >> 2; // 50%
	CCPR2L = 256 >> 2; // 25%
	CCPR3L = 768 >> 2; // 75%
	CCPR5L = 341 >> 2; // 33%
}
