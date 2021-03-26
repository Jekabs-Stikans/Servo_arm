/*
 * init_TC2.asm
 *   Author: Jekabs Stikans
 */ 

 LDI TMP, 255			// Setting initial duty cycle of stepper motors 
 STS OCR2A, TMP
 LDI TMP, 140			// Determines Ultrasonic transmitter frequency, 1/(16ms + (X/256)16ms)
 STS OCR2B, TMP

 						// Enable TC2 overflow interrupt and interrupt A
 LDI TMP, 0x01			// Interrupt A controls stepper motor PWM (And their power consumption)
 STS TIMSK2, TMP		// Interrupt B handles ultrasonic transmitter pulse width
						// Overflow interrupt marks the end of the PWM cycle
					
 LDI TMP, 0x01			// Set clock prescaler to 1, therefore TC2 frequency is 16MHz, PWM period is 16MHz / 256 = 16us
 STS TCCR2B, TMP		// All WGM register bits set to 0, thus running in normal mode and allowing effective PWM of an entire port
