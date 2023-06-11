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
		 ; ===== Generating while loop =====
e0:
		 ; ===== Generating expression Operation(Operation(FunctionCall(lire, [], TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, [])), OperationEnum.MODULO, Entier(2)), OperationEnum.INEQUALITY, Entier(0)) =====
		 ; ===== Generating operation Operation(Operation(FunctionCall(lire, [], TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, [])), OperationEnum.MODULO, Entier(2)), OperationEnum.INEQUALITY, Entier(0)) =====
		 ; ===== Generating expression Operation(FunctionCall(lire, [], TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, [])), OperationEnum.MODULO, Entier(2)) =====
		 ; ===== Generating operation Operation(FunctionCall(lire, [], TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, [])), OperationEnum.MODULO, Entier(2)) =====
		 ; ===== Generating expression FunctionCall(lire, [], TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, [])) =====
	mov	eax,	sinput	
	call	readline		
	call	atoi		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(lire, [], TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, [])) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	mov	edx,	0			 ; met 0 dans edx pour la division
	idiv	ebx				 ; effectue l'opération eaxOperationEnum.MODULOebx et met le reste dans edx
	mov	eax,	edx			 ; met le reste dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MODULO =====
		 ; ===== Finished generating expression Operation(FunctionCall(lire, [], TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, [])), OperationEnum.MODULO, Entier(2)) =====
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setne	al				 ; met 1 dans al si eax != ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.INEQUALITY =====
		 ; ===== Finished generating expression Operation(Operation(FunctionCall(lire, [], TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, [])), OperationEnum.MODULO, Entier(2)), OperationEnum.INEQUALITY, Entier(0)) =====
	pop	eax		
	cmp	eax,	0	
	je	e1		
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
	jmp	e0		
e1:
	push	eax		
		 ; ===== Finished generating while loop =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
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
