/*
 * init_external_interrupts.asm
 *
 *  Created: 2020.01.22. 16:39:38
 *   Author: Jekabs Stikans
 */ 

	/* --- enabling pin change interupt on PB4 --- */
	LDI	TMP, (1 << PCIE0)		// Set to detect changes in port B
	STS PCICR, TMP
	LDI	TMP, 0b00010000			// Set to detect changes in PB4
	STS PCMSK0, TMP

	// currently unused
