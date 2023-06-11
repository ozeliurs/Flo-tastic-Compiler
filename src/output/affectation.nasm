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
	sub	esp,	8	
		 ; ===== Generating expression Entier(4) =====
	push	4		
		 ; ===== Finished generating expression Entier(4) =====
	pop	eax		
	mov	[ebp-4],	eax	
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
	pop	eax		
	mov	[ebp-8],	eax	
		 ; ===== Generating expression Operation(VariableRead(a, entier), OperationEnum.MULTIPLY, VariableRead(b, entier)) =====
		 ; ===== Generating operation Operation(VariableRead(a, entier), OperationEnum.MULTIPLY, VariableRead(b, entier)) =====
		 ; ===== Generating expression VariableRead(a, entier) =====
		 ; ===== Generating variable read VariableDefinitionAssignment(entier, a, Entier(4), -4) =====
	mov	eax,	[ebp-4]			 ; read VariableDefinitionAssignment(entier, a, Entier(4), -4)
	push	eax				 ; push VariableDefinitionAssignment(entier, a, Entier(4), -4) on stack
		 ; ===== Finished generating variable read VariableDefinitionAssignment(entier, a, Entier(4), -4) =====
		 ; ===== Finished generating expression VariableRead(a, entier) =====
		 ; ===== Generating expression VariableRead(b, entier) =====
		 ; ===== Generating variable read VariableDefinitionAssignment(entier, b, Entier(3), -8) =====
	mov	eax,	[ebp-8]			 ; read VariableDefinitionAssignment(entier, b, Entier(3), -8)
	push	eax				 ; push VariableDefinitionAssignment(entier, b, Entier(3), -8) on stack
		 ; ===== Finished generating variable read VariableDefinitionAssignment(entier, b, Entier(3), -8) =====
		 ; ===== Finished generating expression VariableRead(b, entier) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(VariableRead(a, entier), OperationEnum.MULTIPLY, VariableRead(b, entier)) =====
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
