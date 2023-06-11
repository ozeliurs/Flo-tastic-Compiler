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
		 ; ===== Generating expression Operation(Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(74)), OperationEnum.PLUS, Entier(87)) =====
		 ; ===== Generating operation Operation(Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(74)), OperationEnum.PLUS, Entier(87)) =====
		 ; ===== Generating expression Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(74)) =====
		 ; ===== Generating operation Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(74)) =====
		 ; ===== Generating expression Entier(-1) =====
	push	-1		
		 ; ===== Finished generating expression Entier(-1) =====
		 ; ===== Generating expression Entier(74) =====
	push	74		
		 ; ===== Finished generating expression Entier(74) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(74)) =====
		 ; ===== Generating expression Entier(87) =====
	push	87		
		 ; ===== Finished generating expression Entier(87) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(74)), OperationEnum.PLUS, Entier(87)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Entier(74), OperationEnum.MINUS, Entier(87)) =====
		 ; ===== Generating operation Operation(Entier(74), OperationEnum.MINUS, Entier(87)) =====
		 ; ===== Generating expression Entier(74) =====
	push	74		
		 ; ===== Finished generating expression Entier(74) =====
		 ; ===== Generating expression Entier(87) =====
	push	87		
		 ; ===== Finished generating expression Entier(87) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	sub	eax,	ebx			 ; effectue l'opération eaxOperationEnum.MINUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MINUS =====
		 ; ===== Finished generating expression Operation(Entier(74), OperationEnum.MINUS, Entier(87)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Entier(92), OperationEnum.PLUS, Entier(180)) =====
		 ; ===== Generating operation Operation(Entier(92), OperationEnum.PLUS, Entier(180)) =====
		 ; ===== Generating expression Entier(92) =====
	push	92		
		 ; ===== Finished generating expression Entier(92) =====
		 ; ===== Generating expression Entier(180) =====
	push	180		
		 ; ===== Finished generating expression Entier(180) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(Entier(92), OperationEnum.PLUS, Entier(180)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Entier(83), OperationEnum.PLUS, Entier(9)) =====
		 ; ===== Generating operation Operation(Entier(83), OperationEnum.PLUS, Entier(9)) =====
		 ; ===== Generating expression Entier(83) =====
	push	83		
		 ; ===== Finished generating expression Entier(83) =====
		 ; ===== Generating expression Entier(9) =====
	push	9		
		 ; ===== Finished generating expression Entier(9) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(Entier(83), OperationEnum.PLUS, Entier(9)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Entier(921), OperationEnum.PLUS, Entier(90)) =====
		 ; ===== Generating operation Operation(Entier(921), OperationEnum.PLUS, Entier(90)) =====
		 ; ===== Generating expression Entier(921) =====
	push	921		
		 ; ===== Finished generating expression Entier(921) =====
		 ; ===== Generating expression Entier(90) =====
	push	90		
		 ; ===== Finished generating expression Entier(90) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(Entier(921), OperationEnum.PLUS, Entier(90)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(Operation(Entier(883), OperationEnum.PLUS, Entier(9938)), OperationEnum.PLUS, Entier(3097)), OperationEnum.PLUS, Entier(983)) =====
		 ; ===== Generating operation Operation(Operation(Operation(Entier(883), OperationEnum.PLUS, Entier(9938)), OperationEnum.PLUS, Entier(3097)), OperationEnum.PLUS, Entier(983)) =====
		 ; ===== Generating expression Operation(Operation(Entier(883), OperationEnum.PLUS, Entier(9938)), OperationEnum.PLUS, Entier(3097)) =====
		 ; ===== Generating operation Operation(Operation(Entier(883), OperationEnum.PLUS, Entier(9938)), OperationEnum.PLUS, Entier(3097)) =====
		 ; ===== Generating expression Operation(Entier(883), OperationEnum.PLUS, Entier(9938)) =====
		 ; ===== Generating operation Operation(Entier(883), OperationEnum.PLUS, Entier(9938)) =====
		 ; ===== Generating expression Entier(883) =====
	push	883		
		 ; ===== Finished generating expression Entier(883) =====
		 ; ===== Generating expression Entier(9938) =====
	push	9938		
		 ; ===== Finished generating expression Entier(9938) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(Entier(883), OperationEnum.PLUS, Entier(9938)) =====
		 ; ===== Generating expression Entier(3097) =====
	push	3097		
		 ; ===== Finished generating expression Entier(3097) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(Operation(Entier(883), OperationEnum.PLUS, Entier(9938)), OperationEnum.PLUS, Entier(3097)) =====
		 ; ===== Generating expression Entier(983) =====
	push	983		
		 ; ===== Finished generating expression Entier(983) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(Operation(Operation(Entier(883), OperationEnum.PLUS, Entier(9938)), OperationEnum.PLUS, Entier(3097)), OperationEnum.PLUS, Entier(983)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(Operation(Entier(883), OperationEnum.PLUS, Entier(9938)), OperationEnum.PLUS, Entier(0)), OperationEnum.PLUS, Entier(983)) =====
		 ; ===== Generating operation Operation(Operation(Operation(Entier(883), OperationEnum.PLUS, Entier(9938)), OperationEnum.PLUS, Entier(0)), OperationEnum.PLUS, Entier(983)) =====
		 ; ===== Generating expression Operation(Operation(Entier(883), OperationEnum.PLUS, Entier(9938)), OperationEnum.PLUS, Entier(0)) =====
		 ; ===== Generating operation Operation(Operation(Entier(883), OperationEnum.PLUS, Entier(9938)), OperationEnum.PLUS, Entier(0)) =====
		 ; ===== Generating expression Operation(Entier(883), OperationEnum.PLUS, Entier(9938)) =====
		 ; ===== Generating operation Operation(Entier(883), OperationEnum.PLUS, Entier(9938)) =====
		 ; ===== Generating expression Entier(883) =====
	push	883		
		 ; ===== Finished generating expression Entier(883) =====
		 ; ===== Generating expression Entier(9938) =====
	push	9938		
		 ; ===== Finished generating expression Entier(9938) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(Entier(883), OperationEnum.PLUS, Entier(9938)) =====
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(Operation(Entier(883), OperationEnum.PLUS, Entier(9938)), OperationEnum.PLUS, Entier(0)) =====
		 ; ===== Generating expression Entier(983) =====
	push	983		
		 ; ===== Finished generating expression Entier(983) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(Operation(Operation(Entier(883), OperationEnum.PLUS, Entier(9938)), OperationEnum.PLUS, Entier(0)), OperationEnum.PLUS, Entier(983)) =====
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
