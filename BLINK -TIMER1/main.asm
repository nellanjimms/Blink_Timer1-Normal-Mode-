.include "m328pdef.inc"

.cseg
.org 0x0000

start:
	ldi r16, 0xFF
	out DDRD, r16
	
loop:
	sbi PORTD, 0
	call delay_timer
	cbi PORTD, 0
	call delay_timer
	rjmp loop

delay_timer:
;200ms delay
	.equ Count = 62411
	ldi r17, High(Count) ;Load higher bytes of count into r17
	sts TCNT1H, r17
	ldi r18, low(Count) ;Load lower bytes of count into r17
	sts TCNT1L, r18
	ldi r19, 0X00
	sts TCCR1A, r19		;set timer to normal mode 
	ldi r19, (1<<CS12) | (1<<CS10)	;prescaler of 1024
	sts TCCR1B, r19
lp:
	sbis TIFR1, TOV1
	rjmp lp
	sbi TIFR1, TOV1
	ldi r20, 0xFF
	sts TCCR1B, r20
	ret


