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
		 ; ===== Generating expression Operation(Operation(Operation(Entier(2), OperationEnum.PLUS, Entier(3)), OperationEnum.PLUS, Entier(4)), OperationEnum.PLUS, Entier(5)) =====
		 ; ===== Generating operation Operation(Operation(Operation(Entier(2), OperationEnum.PLUS, Entier(3)), OperationEnum.PLUS, Entier(4)), OperationEnum.PLUS, Entier(5)) =====
		 ; ===== Generating expression Operation(Operation(Entier(2), OperationEnum.PLUS, Entier(3)), OperationEnum.PLUS, Entier(4)) =====
		 ; ===== Generating operation Operation(Operation(Entier(2), OperationEnum.PLUS, Entier(3)), OperationEnum.PLUS, Entier(4)) =====
		 ; ===== Generating expression Operation(Entier(2), OperationEnum.PLUS, Entier(3)) =====
		 ; ===== Generating operation Operation(Entier(2), OperationEnum.PLUS, Entier(3)) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(Entier(2), OperationEnum.PLUS, Entier(3)) =====
		 ; ===== Generating expression Entier(4) =====
	push	4		
		 ; ===== Finished generating expression Entier(4) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(Operation(Entier(2), OperationEnum.PLUS, Entier(3)), OperationEnum.PLUS, Entier(4)) =====
		 ; ===== Generating expression Entier(5) =====
	push	5		
		 ; ===== Finished generating expression Entier(5) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(Operation(Operation(Entier(2), OperationEnum.PLUS, Entier(3)), OperationEnum.PLUS, Entier(4)), OperationEnum.PLUS, Entier(5)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(Entier(2), OperationEnum.PLUS, Entier(3)), OperationEnum.PLUS, Operation(Entier(4), OperationEnum.MULTIPLY, Entier(5))) =====
		 ; ===== Generating operation Operation(Operation(Entier(2), OperationEnum.PLUS, Entier(3)), OperationEnum.PLUS, Operation(Entier(4), OperationEnum.MULTIPLY, Entier(5))) =====
		 ; ===== Generating expression Operation(Entier(2), OperationEnum.PLUS, Entier(3)) =====
		 ; ===== Generating operation Operation(Entier(2), OperationEnum.PLUS, Entier(3)) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(Entier(2), OperationEnum.PLUS, Entier(3)) =====
		 ; ===== Generating expression Operation(Entier(4), OperationEnum.MULTIPLY, Entier(5)) =====
		 ; ===== Generating operation Operation(Entier(4), OperationEnum.MULTIPLY, Entier(5)) =====
		 ; ===== Generating expression Entier(4) =====
	push	4		
		 ; ===== Finished generating expression Entier(4) =====
		 ; ===== Generating expression Entier(5) =====
	push	5		
		 ; ===== Finished generating expression Entier(5) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(4), OperationEnum.MULTIPLY, Entier(5)) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(Operation(Entier(2), OperationEnum.PLUS, Entier(3)), OperationEnum.PLUS, Operation(Entier(4), OperationEnum.MULTIPLY, Entier(5))) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(Entier(2), OperationEnum.PLUS, Operation(Entier(3), OperationEnum.MULTIPLY, Entier(4))), OperationEnum.PLUS, Entier(5)) =====
		 ; ===== Generating operation Operation(Operation(Entier(2), OperationEnum.PLUS, Operation(Entier(3), OperationEnum.MULTIPLY, Entier(4))), OperationEnum.PLUS, Entier(5)) =====
		 ; ===== Generating expression Operation(Entier(2), OperationEnum.PLUS, Operation(Entier(3), OperationEnum.MULTIPLY, Entier(4))) =====
		 ; ===== Generating operation Operation(Entier(2), OperationEnum.PLUS, Operation(Entier(3), OperationEnum.MULTIPLY, Entier(4))) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
		 ; ===== Generating expression Operation(Entier(3), OperationEnum.MULTIPLY, Entier(4)) =====
		 ; ===== Generating operation Operation(Entier(3), OperationEnum.MULTIPLY, Entier(4)) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
		 ; ===== Generating expression Entier(4) =====
	push	4		
		 ; ===== Finished generating expression Entier(4) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(3), OperationEnum.MULTIPLY, Entier(4)) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(Entier(2), OperationEnum.PLUS, Operation(Entier(3), OperationEnum.MULTIPLY, Entier(4))) =====
		 ; ===== Generating expression Entier(5) =====
	push	5		
		 ; ===== Finished generating expression Entier(5) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(Operation(Entier(2), OperationEnum.PLUS, Operation(Entier(3), OperationEnum.MULTIPLY, Entier(4))), OperationEnum.PLUS, Entier(5)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Entier(2), OperationEnum.PLUS, Operation(Operation(Entier(3), OperationEnum.MULTIPLY, Entier(4)), OperationEnum.MULTIPLY, Entier(5))) =====
		 ; ===== Generating operation Operation(Entier(2), OperationEnum.PLUS, Operation(Operation(Entier(3), OperationEnum.MULTIPLY, Entier(4)), OperationEnum.MULTIPLY, Entier(5))) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
		 ; ===== Generating expression Operation(Operation(Entier(3), OperationEnum.MULTIPLY, Entier(4)), OperationEnum.MULTIPLY, Entier(5)) =====
		 ; ===== Generating operation Operation(Operation(Entier(3), OperationEnum.MULTIPLY, Entier(4)), OperationEnum.MULTIPLY, Entier(5)) =====
		 ; ===== Generating expression Operation(Entier(3), OperationEnum.MULTIPLY, Entier(4)) =====
		 ; ===== Generating operation Operation(Entier(3), OperationEnum.MULTIPLY, Entier(4)) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
		 ; ===== Generating expression Entier(4) =====
	push	4		
		 ; ===== Finished generating expression Entier(4) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(3), OperationEnum.MULTIPLY, Entier(4)) =====
		 ; ===== Generating expression Entier(5) =====
	push	5		
		 ; ===== Finished generating expression Entier(5) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Operation(Entier(3), OperationEnum.MULTIPLY, Entier(4)), OperationEnum.MULTIPLY, Entier(5)) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(Entier(2), OperationEnum.PLUS, Operation(Operation(Entier(3), OperationEnum.MULTIPLY, Entier(4)), OperationEnum.MULTIPLY, Entier(5))) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.PLUS, Entier(4)), OperationEnum.PLUS, Entier(5)) =====
		 ; ===== Generating operation Operation(Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.PLUS, Entier(4)), OperationEnum.PLUS, Entier(5)) =====
		 ; ===== Generating expression Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.PLUS, Entier(4)) =====
		 ; ===== Generating operation Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.PLUS, Entier(4)) =====
		 ; ===== Generating expression Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)) =====
		 ; ===== Generating operation Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)) =====
		 ; ===== Generating expression Entier(4) =====
	push	4		
		 ; ===== Finished generating expression Entier(4) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.PLUS, Entier(4)) =====
		 ; ===== Generating expression Entier(5) =====
	push	5		
		 ; ===== Finished generating expression Entier(5) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.PLUS, Entier(4)), OperationEnum.PLUS, Entier(5)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.PLUS, Operation(Entier(4), OperationEnum.MULTIPLY, Entier(5))) =====
		 ; ===== Generating operation Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.PLUS, Operation(Entier(4), OperationEnum.MULTIPLY, Entier(5))) =====
		 ; ===== Generating expression Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)) =====
		 ; ===== Generating operation Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)) =====
		 ; ===== Generating expression Operation(Entier(4), OperationEnum.MULTIPLY, Entier(5)) =====
		 ; ===== Generating operation Operation(Entier(4), OperationEnum.MULTIPLY, Entier(5)) =====
		 ; ===== Generating expression Entier(4) =====
	push	4		
		 ; ===== Finished generating expression Entier(4) =====
		 ; ===== Generating expression Entier(5) =====
	push	5		
		 ; ===== Finished generating expression Entier(5) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(4), OperationEnum.MULTIPLY, Entier(5)) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.PLUS, Operation(Entier(4), OperationEnum.MULTIPLY, Entier(5))) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.MULTIPLY, Entier(4)), OperationEnum.PLUS, Entier(5)) =====
		 ; ===== Generating operation Operation(Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.MULTIPLY, Entier(4)), OperationEnum.PLUS, Entier(5)) =====
		 ; ===== Generating expression Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.MULTIPLY, Entier(4)) =====
		 ; ===== Generating operation Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.MULTIPLY, Entier(4)) =====
		 ; ===== Generating expression Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)) =====
		 ; ===== Generating operation Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)) =====
		 ; ===== Generating expression Entier(4) =====
	push	4		
		 ; ===== Finished generating expression Entier(4) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.MULTIPLY, Entier(4)) =====
		 ; ===== Generating expression Entier(5) =====
	push	5		
		 ; ===== Finished generating expression Entier(5) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.MULTIPLY, Entier(4)), OperationEnum.PLUS, Entier(5)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.MULTIPLY, Entier(4)), OperationEnum.MULTIPLY, Entier(5)) =====
		 ; ===== Generating operation Operation(Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.MULTIPLY, Entier(4)), OperationEnum.MULTIPLY, Entier(5)) =====
		 ; ===== Generating expression Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.MULTIPLY, Entier(4)) =====
		 ; ===== Generating operation Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.MULTIPLY, Entier(4)) =====
		 ; ===== Generating expression Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)) =====
		 ; ===== Generating operation Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)) =====
		 ; ===== Generating expression Entier(4) =====
	push	4		
		 ; ===== Finished generating expression Entier(4) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.MULTIPLY, Entier(4)) =====
		 ; ===== Generating expression Entier(5) =====
	push	5		
		 ; ===== Finished generating expression Entier(5) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.MULTIPLY, Entier(4)), OperationEnum.MULTIPLY, Entier(5)) =====
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
