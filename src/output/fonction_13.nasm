%include	"io.asm"
section	.bss
sinput:	resb	255	;reserve a 255 byte space in memory for the users input string
v$a:	resd	1
section	.text
global _start
		 ; ===== Generating function declarations =====
		 ; ===== Generating function somme =====
_somme:
		 ; ===== Initialising function somme =====
	push	ebp		
	mov	ebp,	esp	
		 ; ===== Storing arguments of function somme =====
		 ; ===== Storing argument n =====
		 ; ===== Stored argument n at offset +8 =====
		 ; ===== Allocating local variables of function somme =====
		 ; ===== Found 1 local variables in function somme =====
	sub	esp,	4			 ; Substracting space for local variables from esp (4)
		 ; ===== Storing local variable res =====
		 ; ===== Stored local variable res at offset -4 =====
		 ; ===== Generating instructions of function somme =====
		 ; ===== Generating condition =====
		 ; ===== Generating expression Operation(VariableRead(n, entier), OperationEnum.EQUALITY, Entier(0)) =====
		 ; ===== Generating operation Operation(VariableRead(n, entier), OperationEnum.EQUALITY, Entier(0)) =====
		 ; ===== Generating expression VariableRead(n, entier) =====
		 ; ===== Generating variable read Parameter(entier, n) =====
	mov	eax,	[ebp+8]			 ; read Parameter(entier, n)
	push	eax				 ; push Parameter(entier, n) on stack
		 ; ===== Finished generating variable read Parameter(entier, n) =====
		 ; ===== Finished generating expression VariableRead(n, entier) =====
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	sete	al				 ; met 1 dans al si eax == ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.EQUALITY =====
		 ; ===== Finished generating expression Operation(VariableRead(n, entier), OperationEnum.EQUALITY, Entier(0)) =====
	pop	eax		
	cmp	eax,	0	
	je	e0		
		 ; ===== Generating return statement =====
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax				 ; Pop return value from stack
	leave					 ; Clean up stack
	ret					 ; Return to caller
		 ; ===== Finished generating return statement =====
	jmp	e1		
e0:
e1:
	push	eax		
		 ; ===== Finished generating condition =====
		 ; ===== Generating expression Operation(FunctionCall(somme, [<arbre_abstrait.Operation object at 0x7f684d6fa5f0>], entier, FunctionDeclaration(entier, somme, [<arbre_abstrait.Parameter object at 0x7f684d6fa1a0>])), OperationEnum.PLUS, VariableRead(n, entier)) =====
		 ; ===== Generating operation Operation(FunctionCall(somme, [<arbre_abstrait.Operation object at 0x7f684d6fa5f0>], entier, FunctionDeclaration(entier, somme, [<arbre_abstrait.Parameter object at 0x7f684d6fa1a0>])), OperationEnum.PLUS, VariableRead(n, entier)) =====
		 ; ===== Generating expression FunctionCall(somme, [<arbre_abstrait.Operation object at 0x7f684d6fa5f0>], entier, FunctionDeclaration(entier, somme, [<arbre_abstrait.Parameter object at 0x7f684d6fa1a0>])) =====
		 ; ===== Generating expression Operation(VariableRead(n, entier), OperationEnum.MINUS, Entier(1)) =====
		 ; ===== Generating operation Operation(VariableRead(n, entier), OperationEnum.MINUS, Entier(1)) =====
		 ; ===== Generating expression VariableRead(n, entier) =====
		 ; ===== Generating variable read Parameter(entier, n) =====
	mov	eax,	[ebp+8]			 ; read Parameter(entier, n)
	push	eax				 ; push Parameter(entier, n) on stack
		 ; ===== Finished generating variable read Parameter(entier, n) =====
		 ; ===== Finished generating expression VariableRead(n, entier) =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	sub	eax,	ebx			 ; effectue l'opération eaxOperationEnum.MINUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MINUS =====
		 ; ===== Finished generating expression Operation(VariableRead(n, entier), OperationEnum.MINUS, Entier(1)) =====
	call	_somme		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(somme, [<arbre_abstrait.Operation object at 0x7f684d6fa5f0>], entier, FunctionDeclaration(entier, somme, [<arbre_abstrait.Parameter object at 0x7f684d6fa1a0>])) =====
		 ; ===== Generating expression VariableRead(n, entier) =====
		 ; ===== Generating variable read Parameter(entier, n) =====
	mov	eax,	[ebp+8]			 ; read Parameter(entier, n)
	push	eax				 ; push Parameter(entier, n) on stack
		 ; ===== Finished generating variable read Parameter(entier, n) =====
		 ; ===== Finished generating expression VariableRead(n, entier) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(FunctionCall(somme, [<arbre_abstrait.Operation object at 0x7f684d6fa5f0>], entier, FunctionDeclaration(entier, somme, [<arbre_abstrait.Parameter object at 0x7f684d6fa1a0>])), OperationEnum.PLUS, VariableRead(n, entier)) =====
	pop	eax		
	mov	[ebp-4],	eax	
		 ; ===== Generating return statement =====
		 ; ===== Generating expression VariableRead(res, entier) =====
		 ; ===== Generating variable read VariableDefinitionAssignment(entier, res, Operation(FunctionCall(somme, [<arbre_abstrait.Operation object at 0x7f684d6fa5f0>], entier, FunctionDeclaration(entier, somme, [<arbre_abstrait.Parameter object at 0x7f684d6fa1a0>])), OperationEnum.PLUS, VariableRead(n, entier)), -4) =====
	mov	eax,	[ebp-4]			 ; read VariableDefinitionAssignment(entier, res, Operation(FunctionCall(somme, [<arbre_abstrait.Operation object at 0x7f684d6fa5f0>], entier, FunctionDeclaration(entier, somme, [<arbre_abstrait.Parameter object at 0x7f684d6fa1a0>])), OperationEnum.PLUS, VariableRead(n, entier)), -4)
	push	eax				 ; push VariableDefinitionAssignment(entier, res, Operation(FunctionCall(somme, [<arbre_abstrait.Operation object at 0x7f684d6fa5f0>], entier, FunctionDeclaration(entier, somme, [<arbre_abstrait.Parameter object at 0x7f684d6fa1a0>])), OperationEnum.PLUS, VariableRead(n, entier)), -4) on stack
		 ; ===== Finished generating variable read VariableDefinitionAssignment(entier, res, Operation(FunctionCall(somme, [<arbre_abstrait.Operation object at 0x7f684d6fa5f0>], entier, FunctionDeclaration(entier, somme, [<arbre_abstrait.Parameter object at 0x7f684d6fa1a0>])), OperationEnum.PLUS, VariableRead(n, entier)), -4) =====
		 ; ===== Finished generating expression VariableRead(res, entier) =====
	pop	eax				 ; Pop return value from stack
	leave					 ; Clean up stack
	ret					 ; Return to caller
		 ; ===== Finished generating return statement =====
		 ; ===== Finished generating instructions of function somme =====
		 ; ===== Cleaning up function somme =====
	leave					 ; Clean up stack
	ret					 ; Return to caller
		 ; ===== Finished cleaning up function somme =====
		 ; ===== Finished generating function somme =====
		 ; ===== End of function declarations =====
		 ; ===== Generating main function =====
main:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	0	
		 ; ===== Generating expression FunctionCall(somme, [<arbre_abstrait.Entier object at 0x7f684d6fa920>], entier, FunctionDeclaration(entier, somme, [<arbre_abstrait.Parameter object at 0x7f684d6fa1a0>])) =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
	call	_somme		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(somme, [<arbre_abstrait.Entier object at 0x7f684d6fa920>], entier, FunctionDeclaration(entier, somme, [<arbre_abstrait.Parameter object at 0x7f684d6fa1a0>])) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression FunctionCall(somme, [<arbre_abstrait.Entier object at 0x7f684d6fac20>], entier, FunctionDeclaration(entier, somme, [<arbre_abstrait.Parameter object at 0x7f684d6fa1a0>])) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	call	_somme		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(somme, [<arbre_abstrait.Entier object at 0x7f684d6fac20>], entier, FunctionDeclaration(entier, somme, [<arbre_abstrait.Parameter object at 0x7f684d6fa1a0>])) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression FunctionCall(somme, [<arbre_abstrait.Entier object at 0x7f684d6fada0>], entier, FunctionDeclaration(entier, somme, [<arbre_abstrait.Parameter object at 0x7f684d6fa1a0>])) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
	call	_somme		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(somme, [<arbre_abstrait.Entier object at 0x7f684d6fada0>], entier, FunctionDeclaration(entier, somme, [<arbre_abstrait.Parameter object at 0x7f684d6fa1a0>])) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression FunctionCall(somme, [<arbre_abstrait.Entier object at 0x7f684d6faf20>], entier, FunctionDeclaration(entier, somme, [<arbre_abstrait.Parameter object at 0x7f684d6fa1a0>])) =====
		 ; ===== Generating expression Entier(4) =====
	push	4		
		 ; ===== Finished generating expression Entier(4) =====
	call	_somme		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(somme, [<arbre_abstrait.Entier object at 0x7f684d6faf20>], entier, FunctionDeclaration(entier, somme, [<arbre_abstrait.Parameter object at 0x7f684d6fa1a0>])) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression FunctionCall(somme, [<arbre_abstrait.Entier object at 0x7f684d6fb0a0>], entier, FunctionDeclaration(entier, somme, [<arbre_abstrait.Parameter object at 0x7f684d6fa1a0>])) =====
		 ; ===== Generating expression Entier(5) =====
	push	5		
		 ; ===== Finished generating expression Entier(5) =====
	call	_somme		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(somme, [<arbre_abstrait.Entier object at 0x7f684d6fb0a0>], entier, FunctionDeclaration(entier, somme, [<arbre_abstrait.Parameter object at 0x7f684d6fa1a0>])) =====
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
