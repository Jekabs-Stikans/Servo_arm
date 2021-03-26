/*
 * interrupt_vector_table.asm
 *   Author: gints.dreifogels
 */ 


 	/* --- VECTOR TABLE --- */
.org 0x0000		JMP RESET       ; RESET

.org INT0addr	JMP ISR_INT0    ; External Interrupt Request 0
.org INT1addr	JMP ISR_INT1    ; External Interrupt Request 1

.org PCI0addr	JMP ISR_PCI0	; Pin Change Interrupt Request 0
.org PCI1addr	JMP ISR_PCI1	; Pin Change Interrupt Request 1
.org PCI2addr	JMP ISR_PCI2	; Pin Change Interrupt Request 2

.org WDTaddr	JMP ISR_WDT		; Watchdog Time-out Interrupt

.org OC2Aaddr	JMP ISR_OC2A	; Timer/Counter2 Compare Match A
.org OC2Baddr	JMP ISR_OC2B	; Timer/Counter2 Compare Match B
.org OVF2addr	JMP ISR_OVF2	; Timer/Counter2 Overflow

.org ICP1addr	JMP ISR_ICP1	; Timer/Counter1 Capture Event
.org OC1Aaddr	JMP ISR_OC1A	; Timer/Counter1 Compare Match A
.org OC1Baddr	JMP ISR_OC1B	; Timer/Counter1 Compare Match B
.org OVF1addr	JMP ISR_OVF1	; Timer/Counter1 Overflow

.org OC0Aaddr	JMP ISR_OC0A	; TimerCounter0 Compare Match A
.org OC0Baddr	JMP ISR_OC0B	; TimerCounter0 Compare Match B
.org OVF0addr	JMP ISR_OVF0	; Timer/Couner0 Overflow

.org SPIaddr	JMP ISR_SPI		; SPI Serial Transfer Complete

.org URXCaddr	JMP ISR_URXC	; USART Rx Complete
.org UDREaddr	JMP ISR_UDRE 	; USART, Data Register Empty
.org UTXCaddr	JMP ISR_UTXC	; USART Tx Complete

.org ADCCaddr	JMP ISR_ADCC 	; ADC Conversion Complete

.org ERDYaddr	JMP ISR_ERDY	; EEPROM Ready

.org ACIaddr	JMP ISR_ACI		; Analog Comparator

.org TWIaddr	JMP ISR_TWI		; Two-wire Serial Interface

.org SPMRaddr	JMP ISR_SPMR	; Store Program Memory Read