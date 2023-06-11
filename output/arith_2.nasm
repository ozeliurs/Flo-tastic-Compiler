%include	"io.asm"
section	.bss
sinput:	resb	255	;reserve a 255 byte space in memory for the users input string
v$a:	resd	1
section	.text
global _start
		 ; ===== Generating function declarations =====
		 ; ===== End of function declarations =====
		 ; ===== Generating main function =====
main:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	0	
		 ; ===== Generating expression Operation(Entier(74), OperationEnum.MULTIPLY, Entier(37)) =====
		 ; ===== Generating operation Operation(Entier(74), OperationEnum.MULTIPLY, Entier(37)) =====
		 ; ===== Generating expression Entier(74) =====
	push	74		
		 ; ===== Finished generating expression Entier(74) =====
		 ; ===== Generating expression Entier(37) =====
	push	37		
		 ; ===== Finished generating expression Entier(37) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(74), OperationEnum.MULTIPLY, Entier(37)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(Operation(Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(4)), OperationEnum.MULTIPLY, Entier(37)), OperationEnum.MULTIPLY, Entier(28)), OperationEnum.MULTIPLY, Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(208))) =====
		 ; ===== Generating operation Operation(Operation(Operation(Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(4)), OperationEnum.MULTIPLY, Entier(37)), OperationEnum.MULTIPLY, Entier(28)), OperationEnum.MULTIPLY, Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(208))) =====
		 ; ===== Generating expression Operation(Operation(Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(4)), OperationEnum.MULTIPLY, Entier(37)), OperationEnum.MULTIPLY, Entier(28)) =====
		 ; ===== Generating operation Operation(Operation(Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(4)), OperationEnum.MULTIPLY, Entier(37)), OperationEnum.MULTIPLY, Entier(28)) =====
		 ; ===== Generating expression Operation(Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(4)), OperationEnum.MULTIPLY, Entier(37)) =====
		 ; ===== Generating operation Operation(Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(4)), OperationEnum.MULTIPLY, Entier(37)) =====
		 ; ===== Generating expression Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(4)) =====
		 ; ===== Generating operation Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(4)) =====
		 ; ===== Generating expression Entier(-1) =====
	push	-1		
		 ; ===== Finished generating expression Entier(-1) =====
		 ; ===== Generating expression Entier(4) =====
	push	4		
		 ; ===== Finished generating expression Entier(4) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(4)) =====
		 ; ===== Generating expression Entier(37) =====
	push	37		
		 ; ===== Finished generating expression Entier(37) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(4)), OperationEnum.MULTIPLY, Entier(37)) =====
		 ; ===== Generating expression Entier(28) =====
	push	28		
		 ; ===== Finished generating expression Entier(28) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Operation(Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(4)), OperationEnum.MULTIPLY, Entier(37)), OperationEnum.MULTIPLY, Entier(28)) =====
		 ; ===== Generating expression Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(208)) =====
		 ; ===== Generating operation Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(208)) =====
		 ; ===== Generating expression Entier(-1) =====
	push	-1		
		 ; ===== Finished generating expression Entier(-1) =====
		 ; ===== Generating expression Entier(208) =====
	push	208		
		 ; ===== Finished generating expression Entier(208) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(208)) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Operation(Operation(Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(4)), OperationEnum.MULTIPLY, Entier(37)), OperationEnum.MULTIPLY, Entier(28)), OperationEnum.MULTIPLY, Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(208))) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Entier(22), OperationEnum.MULTIPLY, Operation(Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(8)), OperationEnum.MULTIPLY, Entier(892))) =====
		 ; ===== Generating operation Operation(Entier(22), OperationEnum.MULTIPLY, Operation(Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(8)), OperationEnum.MULTIPLY, Entier(892))) =====
		 ; ===== Generating expression Entier(22) =====
	push	22		
		 ; ===== Finished generating expression Entier(22) =====
		 ; ===== Generating expression Operation(Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(8)), OperationEnum.MULTIPLY, Entier(892)) =====
		 ; ===== Generating operation Operation(Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(8)), OperationEnum.MULTIPLY, Entier(892)) =====
		 ; ===== Generating expression Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(8)) =====
		 ; ===== Generating operation Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(8)) =====
		 ; ===== Generating expression Entier(-1) =====
	push	-1		
		 ; ===== Finished generating expression Entier(-1) =====
		 ; ===== Generating expression Entier(8) =====
	push	8		
		 ; ===== Finished generating expression Entier(8) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(8)) =====
		 ; ===== Generating expression Entier(892) =====
	push	892		
		 ; ===== Finished generating expression Entier(892) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(8)), OperationEnum.MULTIPLY, Entier(892)) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(22), OperationEnum.MULTIPLY, Operation(Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(8)), OperationEnum.MULTIPLY, Entier(892))) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(Entier(74), OperationEnum.MULTIPLY, Entier(0)), OperationEnum.MULTIPLY, Operation(Entier(862), OperationEnum.MULTIPLY, Entier(892))) =====
		 ; ===== Generating operation Operation(Operation(Entier(74), OperationEnum.MULTIPLY, Entier(0)), OperationEnum.MULTIPLY, Operation(Entier(862), OperationEnum.MULTIPLY, Entier(892))) =====
		 ; ===== Generating expression Operation(Entier(74), OperationEnum.MULTIPLY, Entier(0)) =====
		 ; ===== Generating operation Operation(Entier(74), OperationEnum.MULTIPLY, Entier(0)) =====
		 ; ===== Generating expression Entier(74) =====
	push	74		
		 ; ===== Finished generating expression Entier(74) =====
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(74), OperationEnum.MULTIPLY, Entier(0)) =====
		 ; ===== Generating expression Operation(Entier(862), OperationEnum.MULTIPLY, Entier(892)) =====
		 ; ===== Generating operation Operation(Entier(862), OperationEnum.MULTIPLY, Entier(892)) =====
		 ; ===== Generating expression Entier(862) =====
	push	862		
		 ; ===== Finished generating expression Entier(862) =====
		 ; ===== Generating expression Entier(892) =====
	push	892		
		 ; ===== Finished generating expression Entier(892) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(862), OperationEnum.MULTIPLY, Entier(892)) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Operation(Entier(74), OperationEnum.MULTIPLY, Entier(0)), OperationEnum.MULTIPLY, Operation(Entier(862), OperationEnum.MULTIPLY, Entier(892))) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Entier(74), OperationEnum.MULTIPLY, Operation(Operation(Entier(1), OperationEnum.MULTIPLY, Entier(62)), OperationEnum.MULTIPLY, Entier(892))) =====
		 ; ===== Generating operation Operation(Entier(74), OperationEnum.MULTIPLY, Operation(Operation(Entier(1), OperationEnum.MULTIPLY, Entier(62)), OperationEnum.MULTIPLY, Entier(892))) =====
		 ; ===== Generating expression Entier(74) =====
	push	74		
		 ; ===== Finished generating expression Entier(74) =====
		 ; ===== Generating expression Operation(Operation(Entier(1), OperationEnum.MULTIPLY, Entier(62)), OperationEnum.MULTIPLY, Entier(892)) =====
		 ; ===== Generating operation Operation(Operation(Entier(1), OperationEnum.MULTIPLY, Entier(62)), OperationEnum.MULTIPLY, Entier(892)) =====
		 ; ===== Generating expression Operation(Entier(1), OperationEnum.MULTIPLY, Entier(62)) =====
		 ; ===== Generating operation Operation(Entier(1), OperationEnum.MULTIPLY, Entier(62)) =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
		 ; ===== Generating expression Entier(62) =====
	push	62		
		 ; ===== Finished generating expression Entier(62) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(1), OperationEnum.MULTIPLY, Entier(62)) =====
		 ; ===== Generating expression Entier(892) =====
	push	892		
		 ; ===== Finished generating expression Entier(892) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Operation(Entier(1), OperationEnum.MULTIPLY, Entier(62)), OperationEnum.MULTIPLY, Entier(892)) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(74), OperationEnum.MULTIPLY, Operation(Operation(Entier(1), OperationEnum.MULTIPLY, Entier(62)), OperationEnum.MULTIPLY, Entier(892))) =====
	pop	eax		
	call	iprintLF		
	leave			
	ret			
		 ; ===== End of main function =====
_start:
	call	main		
	mov	eax,	1			 ; 1 est le code de SYS_EXIT
	mov	ebx,	0			 ; 0 est le code de retour correct ici
	int	0x80				 ; exit
