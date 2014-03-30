.data
A:    .word 100 ; N number
B:	  .word 0
CON:  .word 0x10000
DA:   .word 0x10008

.text

main:
	ld r10,CON(r0)
	ld r11,DA(r0)
	
	ld r2,A(r0) 	;load N from Mem location A
	ld r3,B(r0)		;load 0 from Mem location B

	loop:

	daddi r3,r3,1 	;inc r3

	sd r3,0(r11)
	daddi r1,r0,2
	sd r1,0(r10)

	beq r2,r3,done

	j loop

	done:
	halt
	
	
	
