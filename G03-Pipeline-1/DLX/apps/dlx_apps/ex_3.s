; Guide 3, Ex. 3
; Advanced Computer Architecture
; Pedro Teixeira pedro.teix@ua.pt
; v1.0 October 09, 2019

; Registers map
;r1 -> address(values[i]);
;r2 -> val(values[i]);

;r3 -> address(sum);
;r4 -> val(sum);

;r5 -> add(nElem) and val(nElem)

;r6 -> val(i)

		.data
values: 	.word 1, 2, 3, 4, 5, 6, 7, 8	; integer array 
nelem:		.word 8				; array size
sum:		.space 4			; sum of elements in the array
	
		.text
		.global main

main:						; Initialize variables and constants
		addi r1, r0, values		; r1 = address(values[0])	
						; r2 = val(values[i]) 		-> No need to initialize (on loop)
						
		addi r3, r0, sum		; r3 = address(sum)			
		add r4, r0, r0			; r4 = val(sum) = 0;
	
		addi r5 , r0, nelem		; r5 = address(nElem)
						; No race condition with forwarding enabled. If disabled, add nop
		lw r5, 0(r5)			; r5 = val(nElem)

		add r6, r0, r0			; r6 = val(i) = 0;
	 				
loop:						; do {
		lw r2, 0(r1)			;	r2 = val(values[i])
		nop				; 	Race condition even with forwarding enabled!. Value is obtained on the MEM phase, so 1 cycle delay is needed
		add r4, r4, r2			; 	r4 = val(sum) = sum + values[i]
		
		addi r6, r6, 1			;	r6 = val(i) = i++
		
		addi r1, r1, 4			; 	r1 = address(values[i])
						
		slt r7, r6, r5			; 	r7 = (i < nElem)? 0 if true
		bnez r7, loop			; } while (i < nElem) 
	
		addi r3, r0, sum		; r3 = address(sum)
		sw 0(r3), r4			; store sum in memory
		nop				; to make sure instruction goes until the end
		nop
		nop
		trap 0				; end of program
