/*
 * init_TC0.asm
 *   Author: Jekabs Stikans
 */ 

 
 LDI TMP, CMP_value_15ms		// Unused at the moment
 OUT OCR0A, TMP					//


 LDI TMP, (1 << OCIE0A)
 STS TIMSK0, TMP
 
 LDI TMP, (1 << CS00) | (1 << CS02) 
 
 // clock source divided by 1024 (from prescaler)
 // system clock frequency is 16 MHz, therefore TC1 clock frequency will be 15.625 kHz: 16 000 000  Hz / 1024 = 15 625 Hz
 // TCCR0B.WGM01 = 1 to set TC0 in CTC mode with TOP equal to OCR0A
 
 OUT TCCR0B, TMP