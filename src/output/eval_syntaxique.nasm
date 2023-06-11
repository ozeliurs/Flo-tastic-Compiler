%include	"io.asm"
section	.bss
sinput:	resb	255	;reserve a 255 byte space in memory for the users input string
v$a:	resd	1
section	.text
global _start
		 ; ===== Generating function declarations =====
		 ; ===== Generating function estPair =====
_estPair:
		 ; ===== Initialising function estPair =====
	push	ebp		
	mov	ebp,	esp	
		 ; ===== Storing arguments of function estPair =====
		 ; ===== Storing argument v1 =====
		 ; ===== Stored argument v1 at offset +8 =====
		 ; ===== Allocating local variables of function estPair =====
		 ; ===== Found 0 local variables in function estPair =====
	sub	esp,	0			 ; Substracting space for local variables from esp (0)
		 ; ===== Generating instructions of function estPair =====
		 ; ===== Generating return statement =====
		 ; ===== Generating expression Operation(VariableRead(v1, entier), OperationEnum.EQUALITY, Entier(0)) =====
		 ; ===== Generating operation Operation(VariableRead(v1, entier), OperationEnum.EQUALITY, Entier(0)) =====
		 ; ===== Generating expression VariableRead(v1, entier) =====
		 ; ===== Generating variable read Parameter(entier, v1) =====
	mov	eax,	[ebp+8]			 ; read Parameter(entier, v1)
	push	eax				 ; push Parameter(entier, v1) on stack
		 ; ===== Finished generating variable read Parameter(entier, v1) =====
		 ; ===== Finished generating expression VariableRead(v1, entier) =====
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
		 ; ===== Finished generating expression Operation(VariableRead(v1, entier), OperationEnum.EQUALITY, Entier(0)) =====
	pop	eax				 ; Pop return value from stack
	leave					 ; Clean up stack
	ret					 ; Return to caller
		 ; ===== Finished generating return statement =====
		 ; ===== Finished generating instructions of function estPair =====
		 ; ===== Cleaning up function estPair =====
	leave					 ; Clean up stack
	ret					 ; Return to caller
		 ; ===== Finished cleaning up function estPair =====
		 ; ===== Finished generating function estPair =====
		 ; ===== Generating function max =====
_max:
		 ; ===== Initialising function max =====
	push	ebp		
	mov	ebp,	esp	
		 ; ===== Storing arguments of function max =====
		 ; ===== Storing argument v1 =====
		 ; ===== Stored argument v1 at offset +12 =====
		 ; ===== Storing argument v2 =====
		 ; ===== Stored argument v2 at offset +8 =====
		 ; ===== Allocating local variables of function max =====
		 ; ===== Found 0 local variables in function max =====
	sub	esp,	0			 ; Substracting space for local variables from esp (0)
		 ; ===== Generating instructions of function max =====
		 ; ===== Generating condition =====
		 ; ===== Generating expression Operation(VariableRead(v1, entier), OperationEnum.GREATER_THAN_OR_EQUAL, VariableRead(v2, entier)) =====
		 ; ===== Generating operation Operation(VariableRead(v1, entier), OperationEnum.GREATER_THAN_OR_EQUAL, VariableRead(v2, entier)) =====
		 ; ===== Generating expression VariableRead(v1, entier) =====
		 ; ===== Generating variable read Parameter(entier, v1) =====
	mov	eax,	[ebp+12]			 ; read Parameter(entier, v1)
	push	eax				 ; push Parameter(entier, v1) on stack
		 ; ===== Finished generating variable read Parameter(entier, v1) =====
		 ; ===== Finished generating expression VariableRead(v1, entier) =====
		 ; ===== Generating expression VariableRead(v2, entier) =====
		 ; ===== Generating variable read Parameter(entier, v2) =====
	mov	eax,	[ebp+8]			 ; read Parameter(entier, v2)
	push	eax				 ; push Parameter(entier, v2) on stack
		 ; ===== Finished generating variable read Parameter(entier, v2) =====
		 ; ===== Finished generating expression VariableRead(v2, entier) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setge	al				 ; met 1 dans al si eax >= ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.GREATER_THAN_OR_EQUAL =====
		 ; ===== Finished generating expression Operation(VariableRead(v1, entier), OperationEnum.GREATER_THAN_OR_EQUAL, VariableRead(v2, entier)) =====
	pop	eax		
	cmp	eax,	0	
	je	e0		
		 ; ===== Generating return statement =====
		 ; ===== Generating expression VariableRead(v1, entier) =====
		 ; ===== Generating variable read Parameter(entier, v1) =====
	mov	eax,	[ebp+12]			 ; read Parameter(entier, v1)
	push	eax				 ; push Parameter(entier, v1) on stack
		 ; ===== Finished generating variable read Parameter(entier, v1) =====
		 ; ===== Finished generating expression VariableRead(v1, entier) =====
	pop	eax				 ; Pop return value from stack
	leave					 ; Clean up stack
	ret					 ; Return to caller
		 ; ===== Finished generating return statement =====
	jmp	e1		
e0:
e1:
	push	eax		
		 ; ===== Finished generating condition =====
		 ; ===== Generating return statement =====
		 ; ===== Generating expression VariableRead(v2, entier) =====
		 ; ===== Generating variable read Parameter(entier, v2) =====
	mov	eax,	[ebp+8]			 ; read Parameter(entier, v2)
	push	eax				 ; push Parameter(entier, v2) on stack
		 ; ===== Finished generating variable read Parameter(entier, v2) =====
		 ; ===== Finished generating expression VariableRead(v2, entier) =====
	pop	eax				 ; Pop return value from stack
	leave					 ; Clean up stack
	ret					 ; Return to caller
		 ; ===== Finished generating return statement =====
		 ; ===== Finished generating instructions of function max =====
		 ; ===== Cleaning up function max =====
	leave					 ; Clean up stack
	ret					 ; Return to caller
		 ; ===== Finished cleaning up function max =====
		 ; ===== Finished generating function max =====
		 ; ===== Generating function puissance =====
_puissance:
		 ; ===== Initialising function puissance =====
	push	ebp		
	mov	ebp,	esp	
		 ; ===== Storing arguments of function puissance =====
		 ; ===== Storing argument a =====
		 ; ===== Stored argument a at offset +12 =====
		 ; ===== Storing argument b =====
		 ; ===== Stored argument b at offset +8 =====
		 ; ===== Allocating local variables of function puissance =====
		 ; ===== Found 2 local variables in function puissance =====
	sub	esp,	8			 ; Substracting space for local variables from esp (8)
		 ; ===== Storing local variable i =====
		 ; ===== Stored local variable i at offset -4 =====
		 ; ===== Storing local variable v =====
		 ; ===== Stored local variable v at offset -8 =====
		 ; ===== Generating instructions of function puissance =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
	pop	eax		
	mov	[ebp-4],	eax	
		 ; ===== Generating expression VariableRead(a, entier) =====
		 ; ===== Generating variable read Parameter(entier, a) =====
	mov	eax,	[ebp+12]			 ; read Parameter(entier, a)
	push	eax				 ; push Parameter(entier, a) on stack
		 ; ===== Finished generating variable read Parameter(entier, a) =====
		 ; ===== Finished generating expression VariableRead(a, entier) =====
	pop	eax		
	mov	[ebp-8],	eax	
		 ; ===== Generating while loop =====
e2:
		 ; ===== Generating expression Operation(VariableRead(i, entier), OperationEnum.LESS_THAN, VariableRead(b, entier)) =====
		 ; ===== Generating operation Operation(VariableRead(i, entier), OperationEnum.LESS_THAN, VariableRead(b, entier)) =====
		 ; ===== Generating expression VariableRead(i, entier) =====
		 ; ===== Generating variable read VariableDefinitionAssignment(entier, i, Entier(1), -4) =====
	mov	eax,	[ebp-4]			 ; read VariableDefinitionAssignment(entier, i, Entier(1), -4)
	push	eax				 ; push VariableDefinitionAssignment(entier, i, Entier(1), -4) on stack
		 ; ===== Finished generating variable read VariableDefinitionAssignment(entier, i, Entier(1), -4) =====
		 ; ===== Finished generating expression VariableRead(i, entier) =====
		 ; ===== Generating expression VariableRead(b, entier) =====
		 ; ===== Generating variable read Parameter(entier, b) =====
	mov	eax,	[ebp+8]			 ; read Parameter(entier, b)
	push	eax				 ; push Parameter(entier, b) on stack
		 ; ===== Finished generating variable read Parameter(entier, b) =====
		 ; ===== Finished generating expression VariableRead(b, entier) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setl	al				 ; met 1 dans al si eax < ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.LESS_THAN =====
		 ; ===== Finished generating expression Operation(VariableRead(i, entier), OperationEnum.LESS_THAN, VariableRead(b, entier)) =====
	pop	eax		
	cmp	eax,	0	
	je	e3		
		 ; ===== Generating variable assignment VariableDefinitionAssignment(entier, v, VariableRead(a, entier), -8) =====
		 ; ===== Generating expression Operation(VariableRead(v, entier), OperationEnum.MULTIPLY, VariableRead(a, entier)) =====
		 ; ===== Generating operation Operation(VariableRead(v, entier), OperationEnum.MULTIPLY, VariableRead(a, entier)) =====
		 ; ===== Generating expression VariableRead(v, entier) =====
		 ; ===== Generating variable read VariableDefinitionAssignment(entier, v, VariableRead(a, entier), -8) =====
	mov	eax,	[ebp-8]			 ; read VariableDefinitionAssignment(entier, v, VariableRead(a, entier), -8)
	push	eax				 ; push VariableDefinitionAssignment(entier, v, VariableRead(a, entier), -8) on stack
		 ; ===== Finished generating variable read VariableDefinitionAssignment(entier, v, VariableRead(a, entier), -8) =====
		 ; ===== Finished generating expression VariableRead(v, entier) =====
		 ; ===== Generating expression VariableRead(a, entier) =====
		 ; ===== Generating variable read Parameter(entier, a) =====
	mov	eax,	[ebp+12]			 ; read Parameter(entier, a)
	push	eax				 ; push Parameter(entier, a) on stack
		 ; ===== Finished generating variable read Parameter(entier, a) =====
		 ; ===== Finished generating expression VariableRead(a, entier) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(VariableRead(v, entier), OperationEnum.MULTIPLY, VariableRead(a, entier)) =====
	pop	eax				 ; pop value from stack
	mov	[ebp-8],	eax			 ; assign value to variable
		 ; ===== Finished generating variable assignment VariableDefinitionAssignment(entier, v, VariableRead(a, entier), -8) =====
		 ; ===== Generating variable assignment VariableDefinitionAssignment(entier, i, Entier(1), -4) =====
		 ; ===== Generating expression Operation(VariableRead(i, entier), OperationEnum.PLUS, Entier(1)) =====
		 ; ===== Generating operation Operation(VariableRead(i, entier), OperationEnum.PLUS, Entier(1)) =====
		 ; ===== Generating expression VariableRead(i, entier) =====
		 ; ===== Generating variable read VariableDefinitionAssignment(entier, i, Entier(1), -4) =====
	mov	eax,	[ebp-4]			 ; read VariableDefinitionAssignment(entier, i, Entier(1), -4)
	push	eax				 ; push VariableDefinitionAssignment(entier, i, Entier(1), -4) on stack
		 ; ===== Finished generating variable read VariableDefinitionAssignment(entier, i, Entier(1), -4) =====
		 ; ===== Finished generating expression VariableRead(i, entier) =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(VariableRead(i, entier), OperationEnum.PLUS, Entier(1)) =====
	pop	eax				 ; pop value from stack
	mov	[ebp-4],	eax			 ; assign value to variable
		 ; ===== Finished generating variable assignment VariableDefinitionAssignment(entier, i, Entier(1), -4) =====
	jmp	e2		
e3:
	push	eax		
		 ; ===== Finished generating while loop =====
		 ; ===== Generating return statement =====
		 ; ===== Generating expression VariableRead(v, entier) =====
		 ; ===== Generating variable read VariableDefinitionAssignment(entier, v, VariableRead(a, entier), -8) =====
	mov	eax,	[ebp-8]			 ; read VariableDefinitionAssignment(entier, v, VariableRead(a, entier), -8)
	push	eax				 ; push VariableDefinitionAssignment(entier, v, VariableRead(a, entier), -8) on stack
		 ; ===== Finished generating variable read VariableDefinitionAssignment(entier, v, VariableRead(a, entier), -8) =====
		 ; ===== Finished generating expression VariableRead(v, entier) =====
	pop	eax				 ; Pop return value from stack
	leave					 ; Clean up stack
	ret					 ; Return to caller
		 ; ===== Finished generating return statement =====
		 ; ===== Finished generating instructions of function puissance =====
		 ; ===== Cleaning up function puissance =====
	leave					 ; Clean up stack
	ret					 ; Return to caller
		 ; ===== Finished cleaning up function puissance =====
		 ; ===== Finished generating function puissance =====
		 ; ===== End of function declarations =====
		 ; ===== Generating main function =====
main:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	8	
		 ; ===== Generating expression FunctionCall(lire, [], TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, [])) =====
	mov	eax,	sinput	
	call	readline		
	call	atoi		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(lire, [], TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, [])) =====
	pop	eax		
	mov	[ebp-4],	eax	
		 ; ===== Generating expression FunctionCall(estPair, [<arbre_abstrait.VariableRead object at 0x7f66a7afbb50>], booleen, FunctionDeclaration(booleen, estPair, [<arbre_abstrait.Parameter object at 0x7f66a7afab60>])) =====
		 ; ===== Generating expression VariableRead(a, entier) =====
		 ; ===== Generating variable read VariableDefinitionAssignment(entier, a, FunctionCall(lire, [], TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, [])), -4) =====
	mov	eax,	[ebp-4]			 ; read VariableDefinitionAssignment(entier, a, FunctionCall(lire, [], TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, [])), -4)
	push	eax				 ; push VariableDefinitionAssignment(entier, a, FunctionCall(lire, [], TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, [])), -4) on stack
		 ; ===== Finished generating variable read VariableDefinitionAssignment(entier, a, FunctionCall(lire, [], TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, [])), -4) =====
		 ; ===== Finished generating expression VariableRead(a, entier) =====
	call	_estPair		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(estPair, [<arbre_abstrait.VariableRead object at 0x7f66a7afbb50>], booleen, FunctionDeclaration(booleen, estPair, [<arbre_abstrait.Parameter object at 0x7f66a7afab60>])) =====
	pop	eax		
	mov	[ebp-8],	eax	
		 ; ===== Generating condition =====
		 ; ===== Generating expression VariableRead(b, booleen) =====
		 ; ===== Generating variable read VariableDefinitionAssignment(booleen, b, FunctionCall(estPair, [<arbre_abstrait.VariableRead object at 0x7f66a7afbb50>], booleen, FunctionDeclaration(booleen, estPair, [<arbre_abstrait.Parameter object at 0x7f66a7afab60>])), -8) =====
	mov	eax,	[ebp-8]			 ; read VariableDefinitionAssignment(booleen, b, FunctionCall(estPair, [<arbre_abstrait.VariableRead object at 0x7f66a7afbb50>], booleen, FunctionDeclaration(booleen, estPair, [<arbre_abstrait.Parameter object at 0x7f66a7afab60>])), -8)
	push	eax				 ; push VariableDefinitionAssignment(booleen, b, FunctionCall(estPair, [<arbre_abstrait.VariableRead object at 0x7f66a7afbb50>], booleen, FunctionDeclaration(booleen, estPair, [<arbre_abstrait.Parameter object at 0x7f66a7afab60>])), -8) on stack
		 ; ===== Finished generating variable read VariableDefinitionAssignment(booleen, b, FunctionCall(estPair, [<arbre_abstrait.VariableRead object at 0x7f66a7afbb50>], booleen, FunctionDeclaration(booleen, estPair, [<arbre_abstrait.Parameter object at 0x7f66a7afab60>])), -8) =====
		 ; ===== Finished generating expression VariableRead(b, booleen) =====
	pop	eax		
	cmp	eax,	0	
	je	e4		
		 ; ===== Generating expression FunctionCall(max, [<arbre_abstrait.Entier object at 0x7f66a7afbf70>, <arbre_abstrait.Entier object at 0x7f66a7afbfd0>], entier, FunctionDeclaration(entier, max, [<arbre_abstrait.Parameter object at 0x7f66a7afaec0>, <arbre_abstrait.Parameter object at 0x7f66a7afafb0>])) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
	call	_max		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(max, [<arbre_abstrait.Entier object at 0x7f66a7afbf70>, <arbre_abstrait.Entier object at 0x7f66a7afbfd0>], entier, FunctionDeclaration(entier, max, [<arbre_abstrait.Parameter object at 0x7f66a7afaec0>, <arbre_abstrait.Parameter object at 0x7f66a7afafb0>])) =====
	pop	eax		
	call	iprintLF		
	jmp	e5		
e4:
		 ; ===== Generating expression FunctionCall(puissance, [<arbre_abstrait.Entier object at 0x7f66a797c370>, <arbre_abstrait.Entier object at 0x7f66a797c3d0>], entier, FunctionDeclaration(entier, puissance, [<arbre_abstrait.Parameter object at 0x7f66a7afb400>, <arbre_abstrait.Parameter object at 0x7f66a7afb670>])) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
		 ; ===== Generating expression Entier(4) =====
	push	4		
		 ; ===== Finished generating expression Entier(4) =====
	call	_puissance		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(puissance, [<arbre_abstrait.Entier object at 0x7f66a797c370>, <arbre_abstrait.Entier object at 0x7f66a797c3d0>], entier, FunctionDeclaration(entier, puissance, [<arbre_abstrait.Parameter object at 0x7f66a7afb400>, <arbre_abstrait.Parameter object at 0x7f66a7afb670>])) =====
	pop	eax		
	call	iprintLF		
e5:
	push	eax		
		 ; ===== Finished generating condition =====
	leave			
	ret			
		 ; ===== End of main function =====
_start:
	call	main		
	mov	eax,	1			 ; 1 est le code de SYS_EXIT
	mov	ebx,	0			 ; 0 est le code de retour correct ici
	int	0x80				 ; exit
