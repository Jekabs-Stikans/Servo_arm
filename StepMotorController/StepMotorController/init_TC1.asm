/*
 * init_TC1.asm
 *   Author: Jekabs Stikans
 */ 

 
 LDI TMP, high (CMP_value_50ms)			// Setting up TC1 interrupt frequency
 STS OCR1AH, TMP						// Used for general motor control
 LDI TMP, low (CMP_value_50ms)
 STS OCR1AL, TMP

 LDI TMP, (1 << OCIE1A)
 STS TIMSK1, TMP

 LDI TMP, (1 << WGM12) | (1 << CS10) | (1 << CS12) 
 
 // clock source divided by 1024 (from prescaler)
 // system clock frequency is 16 MHz, therefore TC1 clock frequency will be 15.625 kHz: 16 000 000  Hz / 1024 = 15 625 Hz
 // TCCR1B.WGM12 = 1 to set TC1 in CTC mode with TOP equal to OCR1A
 
 STS TCCR1B, TMP



