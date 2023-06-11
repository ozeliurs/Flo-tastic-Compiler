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
		 ; ===== Generating expression Operation(Operation(Entier(12), OperationEnum.DIVIDE, Entier(13)), OperationEnum.MULTIPLY, Entier(13)) =====
		 ; ===== Generating operation Operation(Operation(Entier(12), OperationEnum.DIVIDE, Entier(13)), OperationEnum.MULTIPLY, Entier(13)) =====
		 ; ===== Generating expression Operation(Entier(12), OperationEnum.DIVIDE, Entier(13)) =====
		 ; ===== Generating operation Operation(Entier(12), OperationEnum.DIVIDE, Entier(13)) =====
		 ; ===== Generating expression Entier(12) =====
	push	12		
		 ; ===== Finished generating expression Entier(12) =====
		 ; ===== Generating expression Entier(13) =====
	push	13		
		 ; ===== Finished generating expression Entier(13) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	mov	edx,	0			 ; met 0 dans edx pour la division
	idiv	ebx				 ; effectue l'opération eaxOperationEnum.DIVIDEebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.DIVIDE =====
		 ; ===== Finished generating expression Operation(Entier(12), OperationEnum.DIVIDE, Entier(13)) =====
		 ; ===== Generating expression Entier(13) =====
	push	13		
		 ; ===== Finished generating expression Entier(13) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Operation(Entier(12), OperationEnum.DIVIDE, Entier(13)), OperationEnum.MULTIPLY, Entier(13)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(Entier(12), OperationEnum.MULTIPLY, Entier(13)), OperationEnum.DIVIDE, Entier(13)) =====
		 ; ===== Generating operation Operation(Operation(Entier(12), OperationEnum.MULTIPLY, Entier(13)), OperationEnum.DIVIDE, Entier(13)) =====
		 ; ===== Generating expression Operation(Entier(12), OperationEnum.MULTIPLY, Entier(13)) =====
		 ; ===== Generating operation Operation(Entier(12), OperationEnum.MULTIPLY, Entier(13)) =====
		 ; ===== Generating expression Entier(12) =====
	push	12		
		 ; ===== Finished generating expression Entier(12) =====
		 ; ===== Generating expression Entier(13) =====
	push	13		
		 ; ===== Finished generating expression Entier(13) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(12), OperationEnum.MULTIPLY, Entier(13)) =====
		 ; ===== Generating expression Entier(13) =====
	push	13		
		 ; ===== Finished generating expression Entier(13) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	mov	edx,	0			 ; met 0 dans edx pour la division
	idiv	ebx				 ; effectue l'opération eaxOperationEnum.DIVIDEebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.DIVIDE =====
		 ; ===== Finished generating expression Operation(Operation(Entier(12), OperationEnum.MULTIPLY, Entier(13)), OperationEnum.DIVIDE, Entier(13)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Entier(47), OperationEnum.MODULO, Entier(20)) =====
		 ; ===== Generating operation Operation(Entier(47), OperationEnum.MODULO, Entier(20)) =====
		 ; ===== Generating expression Entier(47) =====
	push	47		
		 ; ===== Finished generating expression Entier(47) =====
		 ; ===== Generating expression Entier(20) =====
	push	20		
		 ; ===== Finished generating expression Entier(20) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	mov	edx,	0			 ; met 0 dans edx pour la division
	idiv	ebx				 ; effectue l'opération eaxOperationEnum.MODULOebx et met le reste dans edx
	mov	eax,	edx			 ; met le reste dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MODULO =====
		 ; ===== Finished generating expression Operation(Entier(47), OperationEnum.MODULO, Entier(20)) =====
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
