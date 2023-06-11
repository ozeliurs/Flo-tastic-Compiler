%include	"io.asm"
section	.bss
sinput:	resb	255	;reserve a 255 byte space in memory for the users input string
v$a:	resd	1
section	.text
global _start
		 ; ===== Generating function declarations =====
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
		 ; ===== Storing local variable r =====
		 ; ===== Stored local variable r at offset -8 =====
		 ; ===== Generating instructions of function puissance =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
	pop	eax		
	mov	[ebp-8],	eax	
		 ; ===== Generating while loop =====
e0:
		 ; ===== Generating expression Operation(VariableRead(i, entier), OperationEnum.LESS_THAN, VariableRead(b, entier)) =====
		 ; ===== Generating operation Operation(VariableRead(i, entier), OperationEnum.LESS_THAN, VariableRead(b, entier)) =====
		 ; ===== Generating expression VariableRead(i, entier) =====
		 ; ===== Generating variable read VariableDefinition(entier, i, None) =====
	mov	eax,	[ebp-4]			 ; read VariableDefinition(entier, i, None)
	push	eax				 ; push VariableDefinition(entier, i, None) on stack
		 ; ===== Finished generating variable read VariableDefinition(entier, i, None) =====
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
	je	e1		
		 ; ===== Generating variable assignment VariableDefinition(entier, i, None) =====
		 ; ===== Generating expression Operation(VariableRead(i, entier), OperationEnum.PLUS, Entier(1)) =====
		 ; ===== Generating operation Operation(VariableRead(i, entier), OperationEnum.PLUS, Entier(1)) =====
		 ; ===== Generating expression VariableRead(i, entier) =====
		 ; ===== Generating variable read VariableDefinition(entier, i, None) =====
	mov	eax,	[ebp-4]			 ; read VariableDefinition(entier, i, None)
	push	eax				 ; push VariableDefinition(entier, i, None) on stack
		 ; ===== Finished generating variable read VariableDefinition(entier, i, None) =====
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
		 ; ===== Finished generating variable assignment VariableDefinition(entier, i, None) =====
		 ; ===== Generating variable assignment VariableDefinitionAssignment(entier, r, Entier(1), -8) =====
		 ; ===== Generating expression Operation(VariableRead(r, entier), OperationEnum.MULTIPLY, VariableRead(a, entier)) =====
		 ; ===== Generating operation Operation(VariableRead(r, entier), OperationEnum.MULTIPLY, VariableRead(a, entier)) =====
		 ; ===== Generating expression VariableRead(r, entier) =====
		 ; ===== Generating variable read VariableDefinitionAssignment(entier, r, Entier(1), -8) =====
	mov	eax,	[ebp-8]			 ; read VariableDefinitionAssignment(entier, r, Entier(1), -8)
	push	eax				 ; push VariableDefinitionAssignment(entier, r, Entier(1), -8) on stack
		 ; ===== Finished generating variable read VariableDefinitionAssignment(entier, r, Entier(1), -8) =====
		 ; ===== Finished generating expression VariableRead(r, entier) =====
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
		 ; ===== Finished generating expression Operation(VariableRead(r, entier), OperationEnum.MULTIPLY, VariableRead(a, entier)) =====
	pop	eax				 ; pop value from stack
	mov	[ebp-8],	eax			 ; assign value to variable
		 ; ===== Finished generating variable assignment VariableDefinitionAssignment(entier, r, Entier(1), -8) =====
	jmp	e0		
e1:
	push	eax		
		 ; ===== Finished generating while loop =====
		 ; ===== Generating return statement =====
		 ; ===== Generating expression VariableRead(r, entier) =====
		 ; ===== Generating variable read VariableDefinitionAssignment(entier, r, Entier(1), -8) =====
	mov	eax,	[ebp-8]			 ; read VariableDefinitionAssignment(entier, r, Entier(1), -8)
	push	eax				 ; push VariableDefinitionAssignment(entier, r, Entier(1), -8) on stack
		 ; ===== Finished generating variable read VariableDefinitionAssignment(entier, r, Entier(1), -8) =====
		 ; ===== Finished generating expression VariableRead(r, entier) =====
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
	sub	esp,	0	
		 ; ===== Generating expression FunctionCall(puissance, [<arbre_abstrait.Entier object at 0x7f78b373aa10>, <arbre_abstrait.Entier object at 0x7f78b373aa70>], entier, FunctionDeclaration(entier, puissance, [<arbre_abstrait.Parameter object at 0x7f78b373a8c0>, <arbre_abstrait.Parameter object at 0x7f78b373a380>])) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
	call	_puissance		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(puissance, [<arbre_abstrait.Entier object at 0x7f78b373aa10>, <arbre_abstrait.Entier object at 0x7f78b373aa70>], entier, FunctionDeclaration(entier, puissance, [<arbre_abstrait.Parameter object at 0x7f78b373a8c0>, <arbre_abstrait.Parameter object at 0x7f78b373a380>])) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression FunctionCall(puissance, [<arbre_abstrait.Entier object at 0x7f78b373ad70>, <arbre_abstrait.Entier object at 0x7f78b373add0>], entier, FunctionDeclaration(entier, puissance, [<arbre_abstrait.Parameter object at 0x7f78b373a8c0>, <arbre_abstrait.Parameter object at 0x7f78b373a380>])) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
		 ; ===== Generating expression Entier(4) =====
	push	4		
		 ; ===== Finished generating expression Entier(4) =====
	call	_puissance		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(puissance, [<arbre_abstrait.Entier object at 0x7f78b373ad70>, <arbre_abstrait.Entier object at 0x7f78b373add0>], entier, FunctionDeclaration(entier, puissance, [<arbre_abstrait.Parameter object at 0x7f78b373a8c0>, <arbre_abstrait.Parameter object at 0x7f78b373a380>])) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression FunctionCall(puissance, [<arbre_abstrait.Entier object at 0x7f78b373af50>, <arbre_abstrait.Entier object at 0x7f78b373afb0>], entier, FunctionDeclaration(entier, puissance, [<arbre_abstrait.Parameter object at 0x7f78b373a8c0>, <arbre_abstrait.Parameter object at 0x7f78b373a380>])) =====
		 ; ===== Generating expression Entier(4) =====
	push	4		
		 ; ===== Finished generating expression Entier(4) =====
		 ; ===== Generating expression Entier(5) =====
	push	5		
		 ; ===== Finished generating expression Entier(5) =====
	call	_puissance		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(puissance, [<arbre_abstrait.Entier object at 0x7f78b373af50>, <arbre_abstrait.Entier object at 0x7f78b373afb0>], entier, FunctionDeclaration(entier, puissance, [<arbre_abstrait.Parameter object at 0x7f78b373a8c0>, <arbre_abstrait.Parameter object at 0x7f78b373a380>])) =====
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
