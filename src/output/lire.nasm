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
		 ; ===== Generating expression FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )) =====
	mov	eax,	sinput	
	call	readline		
	call	atoi		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )), OperationEnum.MULTIPLY, FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, ))) =====
		 ; ===== Generating operation Operation(FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )), OperationEnum.MULTIPLY, FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, ))) =====
		 ; ===== Generating expression FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )) =====
	mov	eax,	sinput	
	call	readline		
	call	atoi		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )) =====
		 ; ===== Generating expression FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )) =====
	mov	eax,	sinput	
	call	readline		
	call	atoi		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )), OperationEnum.MULTIPLY, FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, ))) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )), OperationEnum.PLUS, FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, ))) =====
		 ; ===== Generating operation Operation(FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )), OperationEnum.PLUS, FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, ))) =====
		 ; ===== Generating expression FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )) =====
	mov	eax,	sinput	
	call	readline		
	call	atoi		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )) =====
		 ; ===== Generating expression FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )) =====
	mov	eax,	sinput	
	call	readline		
	call	atoi		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )), OperationEnum.PLUS, FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, ))) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )), OperationEnum.MINUS, FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, ))) =====
		 ; ===== Generating operation Operation(FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )), OperationEnum.MINUS, FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, ))) =====
		 ; ===== Generating expression FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )) =====
	mov	eax,	sinput	
	call	readline		
	call	atoi		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )) =====
		 ; ===== Generating expression FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )) =====
	mov	eax,	sinput	
	call	readline		
	call	atoi		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	sub	eax,	ebx			 ; effectue l'opération eaxOperationEnum.MINUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MINUS =====
		 ; ===== Finished generating expression Operation(FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )), OperationEnum.MINUS, FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, ))) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.DIVIDE, FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, ))) =====
		 ; ===== Generating operation Operation(Operation(FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.DIVIDE, FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, ))) =====
		 ; ===== Generating expression Operation(FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )), OperationEnum.MULTIPLY, Entier(3)) =====
		 ; ===== Generating operation Operation(FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )), OperationEnum.MULTIPLY, Entier(3)) =====
		 ; ===== Generating expression FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )) =====
	mov	eax,	sinput	
	call	readline		
	call	atoi		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )), OperationEnum.MULTIPLY, Entier(3)) =====
		 ; ===== Generating expression FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )) =====
	mov	eax,	sinput	
	call	readline		
	call	atoi		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	mov	edx,	0			 ; met 0 dans edx pour la division
	idiv	ebx				 ; effectue l'opération eaxOperationEnum.DIVIDEebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.DIVIDE =====
		 ; ===== Finished generating expression Operation(Operation(FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.DIVIDE, FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, ))) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )), OperationEnum.PLUS, Entier(5)), OperationEnum.MODULO, FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, ))) =====
		 ; ===== Generating operation Operation(Operation(FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )), OperationEnum.PLUS, Entier(5)), OperationEnum.MODULO, FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, ))) =====
		 ; ===== Generating expression Operation(FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )), OperationEnum.PLUS, Entier(5)) =====
		 ; ===== Generating operation Operation(FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )), OperationEnum.PLUS, Entier(5)) =====
		 ; ===== Generating expression FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )) =====
	mov	eax,	sinput	
	call	readline		
	call	atoi		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )) =====
		 ; ===== Generating expression Entier(5) =====
	push	5		
		 ; ===== Finished generating expression Entier(5) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )), OperationEnum.PLUS, Entier(5)) =====
		 ; ===== Generating expression FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )) =====
	mov	eax,	sinput	
	call	readline		
	call	atoi		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	mov	edx,	0			 ; met 0 dans edx pour la division
	idiv	ebx				 ; effectue l'opération eaxOperationEnum.MODULOebx et met le reste dans edx
	mov	eax,	edx			 ; met le reste dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MODULO =====
		 ; ===== Finished generating expression Operation(Operation(FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, )), OperationEnum.PLUS, Entier(5)), OperationEnum.MODULO, FunctionCall(lire, , TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, ))) =====
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
