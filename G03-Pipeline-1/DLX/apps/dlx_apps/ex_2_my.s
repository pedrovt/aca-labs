.global main
main:
	  addi     r2,r0,0x4000 ; r2 = 0x4000
	  addi     r5,r0,5      ; r5 = 5
	  addi     r7,r0,7      ; r7 = 7
	  addi     r9,r0,9      ; r9 = 9

	  lw       r1,0(r2)	; r1 = 0x20024000
	  ;nop			; for similiar reasons on Ex.1
          nop			; but even with forwarding one is needed
				; but will need a interblocking unit
          sub      r4,r1,r5	; r4 = 0x20023FFB	vs 0xFFFFFFFB (-5) on execution
          and      r6,r1,r7	; r6 = 0		
          or       r8,r1,r9	; r8 = 0x20024009

	  trap     0           ; end of program
