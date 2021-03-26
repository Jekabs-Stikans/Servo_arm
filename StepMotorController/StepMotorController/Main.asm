; Project: Step Motor Controller
; Author : Jekabs Stikans

.include "interrupt_vector_table.asm"
.include "definitions.asm"


RESET:	
	/* --- Stack Initialization --- */
	LDI	TMP, low(RAMEND)
	OUT	SPL, TMP
	LDI	TMP, high(RAMEND)
	OUT	SPH, TMP

	.include "init_ports.asm"
	//.include "init_external_interrupts.asm"
	//.include "init_TC0.asm"
	.include "init_TC1.asm"
	.include "init_TC2.asm"

	CLR M3_PWM
	LDI M3_Angle, 99	// Set servo motor initial position (around 180 degrees)
	CLR TEST

	/* --- Stepper motor initialisation --- */
	LDI ZH, high (Motor_Data)
	LDI ZL, low (Motor_Data)
	LDI TMP, 0x12
	ST Z+, TMP
	ST Z+, TMP
	ST Z+, TMP
	LDI TMP, 0x80
	ST Z+, TMP
	ST Z+, TMP
	ST Z, TMP

	SEI

MAIN:	
	/* --- check for system reset request --- */
	SBIS PINB, PINB7
	JMP RESET

	/* --- check collision sensor --- */
	SBIS PINB, PINB7
	RJMP MAIN
	
	/* --- Disable motor position updates --- */
	CLR TMP
	STS TIMSK1, TMP
	
	/* --- Wait until collision detector turns off --- */
	Cont_PCI0_0:
	SBIC PINB, PINB4
	RJMP Cont_PCI0_0
	
	/* --- Resume normal operation --- */
	LDI TMP, (1 << OCIE1A)
	STS TIMSK1, TMP
	RJMP MAIN

.include "ISR.asm"
