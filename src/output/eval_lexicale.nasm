%include	"io.asm"
section	.bss
sinput:	resb	255	;reserve a 255 byte space in memory for the users input string
v$a:	resd	1
section	.text
global _start
		 ; ===== Generating function declarations =====
		 ; ===== Generating function max =====
_max:
		 ; ===== Initialising function max =====
	push	ebp		
	mov	ebp,	esp	
		 ; ===== Storing arguments of function max =====
		 ; ===== Storing argument entier1 =====
		 ; ===== Stored argument entier1 at offset +16 =====
		 ; ===== Storing argument entier2 =====
		 ; ===== Stored argument entier2 at offset +12 =====
		 ; ===== Storing argument entier3 =====
		 ; ===== Stored argument entier3 at offset +8 =====
		 ; ===== Allocating local variables of function max =====
		 ; ===== Found 1 local variables in function max =====
	sub	esp,	4			 ; Substracting space for local variables from esp (4)
		 ; ===== Storing local variable res =====
		 ; ===== Stored local variable res at offset -4 =====
		 ; ===== Generating instructions of function max =====
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	mov	[ebp-4],	eax	
		 ; ===== Generating condition =====
		 ; ===== Generating expression Operation(Operation(VariableRead(entier1, entier), OperationEnum.GREATER_THAN_OR_EQUAL, VariableRead(entier2, entier)), OperationEnum.AND, Operation(VariableRead(entier1, entier), OperationEnum.GREATER_THAN, VariableRead(entier3, entier))) =====
		 ; ===== Generating operation Operation(Operation(VariableRead(entier1, entier), OperationEnum.GREATER_THAN_OR_EQUAL, VariableRead(entier2, entier)), OperationEnum.AND, Operation(VariableRead(entier1, entier), OperationEnum.GREATER_THAN, VariableRead(entier3, entier))) =====
		 ; ===== Generating expression Operation(VariableRead(entier1, entier), OperationEnum.GREATER_THAN_OR_EQUAL, VariableRead(entier2, entier)) =====
		 ; ===== Generating operation Operation(VariableRead(entier1, entier), OperationEnum.GREATER_THAN_OR_EQUAL, VariableRead(entier2, entier)) =====
		 ; ===== Generating expression VariableRead(entier1, entier) =====
		 ; ===== Generating variable read Parameter(entier, entier1) =====
	mov	eax,	[ebp+16]			 ; read Parameter(entier, entier1)
	push	eax				 ; push Parameter(entier, entier1) on stack
		 ; ===== Finished generating variable read Parameter(entier, entier1) =====
		 ; ===== Finished generating expression VariableRead(entier1, entier) =====
		 ; ===== Generating expression VariableRead(entier2, entier) =====
		 ; ===== Generating variable read Parameter(entier, entier2) =====
	mov	eax,	[ebp+12]			 ; read Parameter(entier, entier2)
	push	eax				 ; push Parameter(entier, entier2) on stack
		 ; ===== Finished generating variable read Parameter(entier, entier2) =====
		 ; ===== Finished generating expression VariableRead(entier2, entier) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setge	al				 ; met 1 dans al si eax >= ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.GREATER_THAN_OR_EQUAL =====
		 ; ===== Finished generating expression Operation(VariableRead(entier1, entier), OperationEnum.GREATER_THAN_OR_EQUAL, VariableRead(entier2, entier)) =====
		 ; ===== Generating expression Operation(VariableRead(entier1, entier), OperationEnum.GREATER_THAN, VariableRead(entier3, entier)) =====
		 ; ===== Generating operation Operation(VariableRead(entier1, entier), OperationEnum.GREATER_THAN, VariableRead(entier3, entier)) =====
		 ; ===== Generating expression VariableRead(entier1, entier) =====
		 ; ===== Generating variable read Parameter(entier, entier1) =====
	mov	eax,	[ebp+16]			 ; read Parameter(entier, entier1)
	push	eax				 ; push Parameter(entier, entier1) on stack
		 ; ===== Finished generating variable read Parameter(entier, entier1) =====
		 ; ===== Finished generating expression VariableRead(entier1, entier) =====
		 ; ===== Generating expression VariableRead(entier3, entier) =====
		 ; ===== Generating variable read Parameter(entier, entier3) =====
	mov	eax,	[ebp+8]			 ; read Parameter(entier, entier3)
	push	eax				 ; push Parameter(entier, entier3) on stack
		 ; ===== Finished generating variable read Parameter(entier, entier3) =====
		 ; ===== Finished generating expression VariableRead(entier3, entier) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setg	al				 ; met 1 dans al si eax > ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.GREATER_THAN =====
		 ; ===== Finished generating expression Operation(VariableRead(entier1, entier), OperationEnum.GREATER_THAN, VariableRead(entier3, entier)) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	and	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ANDebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.AND =====
		 ; ===== Finished generating expression Operation(Operation(VariableRead(entier1, entier), OperationEnum.GREATER_THAN_OR_EQUAL, VariableRead(entier2, entier)), OperationEnum.AND, Operation(VariableRead(entier1, entier), OperationEnum.GREATER_THAN, VariableRead(entier3, entier))) =====
	pop	eax		
	cmp	eax,	0	
	je	e0		
		 ; ===== Generating variable assignment VariableDefinitionAssignment(entier, res, Entier(0), -4) =====
		 ; ===== Generating expression VariableRead(entier1, entier) =====
		 ; ===== Generating variable read Parameter(entier, entier1) =====
	mov	eax,	[ebp+16]			 ; read Parameter(entier, entier1)
	push	eax				 ; push Parameter(entier, entier1) on stack
		 ; ===== Finished generating variable read Parameter(entier, entier1) =====
		 ; ===== Finished generating expression VariableRead(entier1, entier) =====
	pop	eax				 ; pop value from stack
	mov	[ebp-4],	eax			 ; assign value to variable
		 ; ===== Finished generating variable assignment VariableDefinitionAssignment(entier, res, Entier(0), -4) =====
	jmp	e1		
e0:
		 ; ===== Generating condition =====
		 ; ===== Generating expression Operation(Operation(VariableRead(entier1, entier), OperationEnum.LESS_THAN, VariableRead(entier3, entier)), OperationEnum.NOT, None) =====
		 ; ===== Generating operation Operation(Operation(VariableRead(entier1, entier), OperationEnum.LESS_THAN, VariableRead(entier3, entier)), OperationEnum.NOT, None) =====
		 ; ===== Generating expression Operation(VariableRead(entier1, entier), OperationEnum.LESS_THAN, VariableRead(entier3, entier)) =====
		 ; ===== Generating operation Operation(VariableRead(entier1, entier), OperationEnum.LESS_THAN, VariableRead(entier3, entier)) =====
		 ; ===== Generating expression VariableRead(entier1, entier) =====
		 ; ===== Generating variable read Parameter(entier, entier1) =====
	mov	eax,	[ebp+16]			 ; read Parameter(entier, entier1)
	push	eax				 ; push Parameter(entier, entier1) on stack
		 ; ===== Finished generating variable read Parameter(entier, entier1) =====
		 ; ===== Finished generating expression VariableRead(entier1, entier) =====
		 ; ===== Generating expression VariableRead(entier3, entier) =====
		 ; ===== Generating variable read Parameter(entier, entier3) =====
	mov	eax,	[ebp+8]			 ; read Parameter(entier, entier3)
	push	eax				 ; push Parameter(entier, entier3) on stack
		 ; ===== Finished generating variable read Parameter(entier, entier3) =====
		 ; ===== Finished generating expression VariableRead(entier3, entier) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setl	al				 ; met 1 dans al si eax < ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.LESS_THAN =====
		 ; ===== Finished generating expression Operation(VariableRead(entier1, entier), OperationEnum.LESS_THAN, VariableRead(entier3, entier)) =====
	pop	eax				 ; dépile la permière operande dans eax
	xor	eax,	1			 ; effectue l'opération non eax et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.NOT =====
		 ; ===== Finished generating expression Operation(Operation(VariableRead(entier1, entier), OperationEnum.LESS_THAN, VariableRead(entier3, entier)), OperationEnum.NOT, None) =====
	pop	eax		
	cmp	eax,	0	
	je	e2		
		 ; ===== Generating variable assignment VariableDefinitionAssignment(entier, res, Entier(0), -4) =====
		 ; ===== Generating expression VariableRead(entier2, entier) =====
		 ; ===== Generating variable read Parameter(entier, entier2) =====
	mov	eax,	[ebp+12]			 ; read Parameter(entier, entier2)
	push	eax				 ; push Parameter(entier, entier2) on stack
		 ; ===== Finished generating variable read Parameter(entier, entier2) =====
		 ; ===== Finished generating expression VariableRead(entier2, entier) =====
	pop	eax				 ; pop value from stack
	mov	[ebp-4],	eax			 ; assign value to variable
		 ; ===== Finished generating variable assignment VariableDefinitionAssignment(entier, res, Entier(0), -4) =====
	jmp	e3		
e2:
		 ; ===== Generating condition =====
		 ; ===== Generating expression Operation(VariableRead(entier2, entier), OperationEnum.LESS_THAN_OR_EQUAL, VariableRead(entier1, entier)) =====
		 ; ===== Generating operation Operation(VariableRead(entier2, entier), OperationEnum.LESS_THAN_OR_EQUAL, VariableRead(entier1, entier)) =====
		 ; ===== Generating expression VariableRead(entier2, entier) =====
		 ; ===== Generating variable read Parameter(entier, entier2) =====
	mov	eax,	[ebp+12]			 ; read Parameter(entier, entier2)
	push	eax				 ; push Parameter(entier, entier2) on stack
		 ; ===== Finished generating variable read Parameter(entier, entier2) =====
		 ; ===== Finished generating expression VariableRead(entier2, entier) =====
		 ; ===== Generating expression VariableRead(entier1, entier) =====
		 ; ===== Generating variable read Parameter(entier, entier1) =====
	mov	eax,	[ebp+16]			 ; read Parameter(entier, entier1)
	push	eax				 ; push Parameter(entier, entier1) on stack
		 ; ===== Finished generating variable read Parameter(entier, entier1) =====
		 ; ===== Finished generating expression VariableRead(entier1, entier) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setle	al				 ; met 1 dans al si eax <= ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.LESS_THAN_OR_EQUAL =====
		 ; ===== Finished generating expression Operation(VariableRead(entier2, entier), OperationEnum.LESS_THAN_OR_EQUAL, VariableRead(entier1, entier)) =====
	pop	eax		
	cmp	eax,	0	
	je	e4		
		 ; ===== Generating variable assignment VariableDefinitionAssignment(entier, res, Entier(0), -4) =====
		 ; ===== Generating expression VariableRead(entier3, entier) =====
		 ; ===== Generating variable read Parameter(entier, entier3) =====
	mov	eax,	[ebp+8]			 ; read Parameter(entier, entier3)
	push	eax				 ; push Parameter(entier, entier3) on stack
		 ; ===== Finished generating variable read Parameter(entier, entier3) =====
		 ; ===== Finished generating expression VariableRead(entier3, entier) =====
	pop	eax				 ; pop value from stack
	mov	[ebp-4],	eax			 ; assign value to variable
		 ; ===== Finished generating variable assignment VariableDefinitionAssignment(entier, res, Entier(0), -4) =====
	jmp	e5		
e4:
		 ; ===== Generating variable assignment VariableDefinitionAssignment(entier, res, Entier(0), -4) =====
		 ; ===== Generating expression VariableRead(entier2, entier) =====
		 ; ===== Generating variable read Parameter(entier, entier2) =====
	mov	eax,	[ebp+12]			 ; read Parameter(entier, entier2)
	push	eax				 ; push Parameter(entier, entier2) on stack
		 ; ===== Finished generating variable read Parameter(entier, entier2) =====
		 ; ===== Finished generating expression VariableRead(entier2, entier) =====
	pop	eax				 ; pop value from stack
	mov	[ebp-4],	eax			 ; assign value to variable
		 ; ===== Finished generating variable assignment VariableDefinitionAssignment(entier, res, Entier(0), -4) =====
e5:
	push	eax		
		 ; ===== Finished generating condition =====
e3:
	push	eax		
		 ; ===== Finished generating condition =====
e1:
	push	eax		
		 ; ===== Finished generating condition =====
		 ; ===== Generating return statement =====
		 ; ===== Generating expression VariableRead(res, entier) =====
		 ; ===== Generating variable read VariableDefinitionAssignment(entier, res, Entier(0), -4) =====
	mov	eax,	[ebp-4]			 ; read VariableDefinitionAssignment(entier, res, Entier(0), -4)
	push	eax				 ; push VariableDefinitionAssignment(entier, res, Entier(0), -4) on stack
		 ; ===== Finished generating variable read VariableDefinitionAssignment(entier, res, Entier(0), -4) =====
		 ; ===== Finished generating expression VariableRead(res, entier) =====
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
		 ; ===== End of function declarations =====
		 ; ===== Generating main function =====
main:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	8	
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	eax		
	mov	[ebp-4],	eax	
		 ; ===== Generating while loop =====
e6:
		 ; ===== Generating expression VariableRead(continuer, booleen) =====
		 ; ===== Generating variable read VariableDefinitionAssignment(booleen, continuer, Boolean(True), -4) =====
	mov	eax,	[ebp-4]			 ; read VariableDefinitionAssignment(booleen, continuer, Boolean(True), -4)
	push	eax				 ; push VariableDefinitionAssignment(booleen, continuer, Boolean(True), -4) on stack
		 ; ===== Finished generating variable read VariableDefinitionAssignment(booleen, continuer, Boolean(True), -4) =====
		 ; ===== Finished generating expression VariableRead(continuer, booleen) =====
	pop	eax		
	cmp	eax,	0	
	je	e7		
		 ; ===== Generating expression FunctionCall(max, [<arbre_abstrait.FunctionCall object at 0x7f6694267e50>, <arbre_abstrait.Operation object at 0x7f6694267e80>, <arbre_abstrait.Operation object at 0x7f6694267fa0>], entier, FunctionDeclaration(entier, max, [<arbre_abstrait.Parameter object at 0x7f6694267070>, <arbre_abstrait.Parameter object at 0x7f6694267160>, <arbre_abstrait.Parameter object at 0x7f6694267370>])) =====
		 ; ===== Generating expression FunctionCall(lire, [], TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, [])) =====
	mov	eax,	sinput	
	call	readline		
	call	atoi		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(lire, [], TypeEnum.ENTIER, FunctionDeclaration(TypeEnum.ENTIER, lire, [])) =====
		 ; ===== Generating expression Operation(Operation(Entier(5), OperationEnum.MINUS, Entier(12)), OperationEnum.PLUS, Entier(23)) =====
		 ; ===== Generating operation Operation(Operation(Entier(5), OperationEnum.MINUS, Entier(12)), OperationEnum.PLUS, Entier(23)) =====
		 ; ===== Generating expression Operation(Entier(5), OperationEnum.MINUS, Entier(12)) =====
		 ; ===== Generating operation Operation(Entier(5), OperationEnum.MINUS, Entier(12)) =====
		 ; ===== Generating expression Entier(5) =====
	push	5		
		 ; ===== Finished generating expression Entier(5) =====
		 ; ===== Generating expression Entier(12) =====
	push	12		
		 ; ===== Finished generating expression Entier(12) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	sub	eax,	ebx			 ; effectue l'opération eaxOperationEnum.MINUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MINUS =====
		 ; ===== Finished generating expression Operation(Entier(5), OperationEnum.MINUS, Entier(12)) =====
		 ; ===== Generating expression Entier(23) =====
	push	23		
		 ; ===== Finished generating expression Entier(23) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(Operation(Entier(5), OperationEnum.MINUS, Entier(12)), OperationEnum.PLUS, Entier(23)) =====
		 ; ===== Generating expression Operation(Operation(Entier(47), OperationEnum.DIVIDE, Entier(13)), OperationEnum.MULTIPLY, Entier(6)) =====
		 ; ===== Generating operation Operation(Operation(Entier(47), OperationEnum.DIVIDE, Entier(13)), OperationEnum.MULTIPLY, Entier(6)) =====
		 ; ===== Generating expression Operation(Entier(47), OperationEnum.DIVIDE, Entier(13)) =====
		 ; ===== Generating operation Operation(Entier(47), OperationEnum.DIVIDE, Entier(13)) =====
		 ; ===== Generating expression Entier(47) =====
	push	47		
		 ; ===== Finished generating expression Entier(47) =====
		 ; ===== Generating expression Entier(13) =====
	push	13		
		 ; ===== Finished generating expression Entier(13) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	mov	edx,	0			 ; met 0 dans edx pour la division
	idiv	ebx				 ; effectue l'opération eaxOperationEnum.DIVIDEebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.DIVIDE =====
		 ; ===== Finished generating expression Operation(Entier(47), OperationEnum.DIVIDE, Entier(13)) =====
		 ; ===== Generating expression Entier(6) =====
	push	6		
		 ; ===== Finished generating expression Entier(6) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Operation(Entier(47), OperationEnum.DIVIDE, Entier(13)), OperationEnum.MULTIPLY, Entier(6)) =====
	call	_max		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(max, [<arbre_abstrait.FunctionCall object at 0x7f6694267e50>, <arbre_abstrait.Operation object at 0x7f6694267e80>, <arbre_abstrait.Operation object at 0x7f6694267fa0>], entier, FunctionDeclaration(entier, max, [<arbre_abstrait.Parameter object at 0x7f6694267070>, <arbre_abstrait.Parameter object at 0x7f6694267160>, <arbre_abstrait.Parameter object at 0x7f6694267370>])) =====
	pop	eax		
	mov	[ebp-8],	eax	
		 ; ===== Generating condition =====
		 ; ===== Generating expression Operation(Operation(VariableRead(a, entier), OperationEnum.MODULO, Entier(10)), OperationEnum.INEQUALITY, Entier(0)) =====
		 ; ===== Generating operation Operation(Operation(VariableRead(a, entier), OperationEnum.MODULO, Entier(10)), OperationEnum.INEQUALITY, Entier(0)) =====
		 ; ===== Generating expression Operation(VariableRead(a, entier), OperationEnum.MODULO, Entier(10)) =====
		 ; ===== Generating operation Operation(VariableRead(a, entier), OperationEnum.MODULO, Entier(10)) =====
		 ; ===== Generating expression VariableRead(a, entier) =====
		 ; ===== Generating variable read VariableDefinitionAssignment(entier, a, FunctionCall(max, [<arbre_abstrait.FunctionCall object at 0x7f6694267e50>, <arbre_abstrait.Operation object at 0x7f6694267e80>, <arbre_abstrait.Operation object at 0x7f6694267fa0>], entier, FunctionDeclaration(entier, max, [<arbre_abstrait.Parameter object at 0x7f6694267070>, <arbre_abstrait.Parameter object at 0x7f6694267160>, <arbre_abstrait.Parameter object at 0x7f6694267370>])), -8) =====
	mov	eax,	[ebp-8]			 ; read VariableDefinitionAssignment(entier, a, FunctionCall(max, [<arbre_abstrait.FunctionCall object at 0x7f6694267e50>, <arbre_abstrait.Operation object at 0x7f6694267e80>, <arbre_abstrait.Operation object at 0x7f6694267fa0>], entier, FunctionDeclaration(entier, max, [<arbre_abstrait.Parameter object at 0x7f6694267070>, <arbre_abstrait.Parameter object at 0x7f6694267160>, <arbre_abstrait.Parameter object at 0x7f6694267370>])), -8)
	push	eax				 ; push VariableDefinitionAssignment(entier, a, FunctionCall(max, [<arbre_abstrait.FunctionCall object at 0x7f6694267e50>, <arbre_abstrait.Operation object at 0x7f6694267e80>, <arbre_abstrait.Operation object at 0x7f6694267fa0>], entier, FunctionDeclaration(entier, max, [<arbre_abstrait.Parameter object at 0x7f6694267070>, <arbre_abstrait.Parameter object at 0x7f6694267160>, <arbre_abstrait.Parameter object at 0x7f6694267370>])), -8) on stack
		 ; ===== Finished generating variable read VariableDefinitionAssignment(entier, a, FunctionCall(max, [<arbre_abstrait.FunctionCall object at 0x7f6694267e50>, <arbre_abstrait.Operation object at 0x7f6694267e80>, <arbre_abstrait.Operation object at 0x7f6694267fa0>], entier, FunctionDeclaration(entier, max, [<arbre_abstrait.Parameter object at 0x7f6694267070>, <arbre_abstrait.Parameter object at 0x7f6694267160>, <arbre_abstrait.Parameter object at 0x7f6694267370>])), -8) =====
		 ; ===== Finished generating expression VariableRead(a, entier) =====
		 ; ===== Generating expression Entier(10) =====
	push	10		
		 ; ===== Finished generating expression Entier(10) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	mov	edx,	0			 ; met 0 dans edx pour la division
	idiv	ebx				 ; effectue l'opération eaxOperationEnum.MODULOebx et met le reste dans edx
	mov	eax,	edx			 ; met le reste dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MODULO =====
		 ; ===== Finished generating expression Operation(VariableRead(a, entier), OperationEnum.MODULO, Entier(10)) =====
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
		 ; ===== Finished generating expression Operation(Operation(VariableRead(a, entier), OperationEnum.MODULO, Entier(10)), OperationEnum.INEQUALITY, Entier(0)) =====
	pop	eax		
	cmp	eax,	0	
	je	e8		
		 ; ===== Generating expression VariableRead(a, entier) =====
		 ; ===== Generating variable read VariableDefinitionAssignment(entier, a, FunctionCall(max, [<arbre_abstrait.FunctionCall object at 0x7f6694267e50>, <arbre_abstrait.Operation object at 0x7f6694267e80>, <arbre_abstrait.Operation object at 0x7f6694267fa0>], entier, FunctionDeclaration(entier, max, [<arbre_abstrait.Parameter object at 0x7f6694267070>, <arbre_abstrait.Parameter object at 0x7f6694267160>, <arbre_abstrait.Parameter object at 0x7f6694267370>])), -8) =====
	mov	eax,	[ebp-8]			 ; read VariableDefinitionAssignment(entier, a, FunctionCall(max, [<arbre_abstrait.FunctionCall object at 0x7f6694267e50>, <arbre_abstrait.Operation object at 0x7f6694267e80>, <arbre_abstrait.Operation object at 0x7f6694267fa0>], entier, FunctionDeclaration(entier, max, [<arbre_abstrait.Parameter object at 0x7f6694267070>, <arbre_abstrait.Parameter object at 0x7f6694267160>, <arbre_abstrait.Parameter object at 0x7f6694267370>])), -8)
	push	eax				 ; push VariableDefinitionAssignment(entier, a, FunctionCall(max, [<arbre_abstrait.FunctionCall object at 0x7f6694267e50>, <arbre_abstrait.Operation object at 0x7f6694267e80>, <arbre_abstrait.Operation object at 0x7f6694267fa0>], entier, FunctionDeclaration(entier, max, [<arbre_abstrait.Parameter object at 0x7f6694267070>, <arbre_abstrait.Parameter object at 0x7f6694267160>, <arbre_abstrait.Parameter object at 0x7f6694267370>])), -8) on stack
		 ; ===== Finished generating variable read VariableDefinitionAssignment(entier, a, FunctionCall(max, [<arbre_abstrait.FunctionCall object at 0x7f6694267e50>, <arbre_abstrait.Operation object at 0x7f6694267e80>, <arbre_abstrait.Operation object at 0x7f6694267fa0>], entier, FunctionDeclaration(entier, max, [<arbre_abstrait.Parameter object at 0x7f6694267070>, <arbre_abstrait.Parameter object at 0x7f6694267160>, <arbre_abstrait.Parameter object at 0x7f6694267370>])), -8) =====
		 ; ===== Finished generating expression VariableRead(a, entier) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating variable assignment VariableDefinitionAssignment(booleen, continuer, Boolean(True), -4) =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	eax				 ; pop value from stack
	mov	[ebp-4],	eax			 ; assign value to variable
		 ; ===== Finished generating variable assignment VariableDefinitionAssignment(booleen, continuer, Boolean(True), -4) =====
	jmp	e9		
e8:
e9:
	push	eax		
		 ; ===== Finished generating condition =====
	jmp	e6		
e7:
	push	eax		
		 ; ===== Finished generating while loop =====
	leave			
	ret			
		 ; ===== End of main function =====
_start:
	call	main		
	mov	eax,	1			 ; 1 est le code de SYS_EXIT
	mov	ebx,	0			 ; 0 est le code de retour correct ici
	int	0x80				 ; exit
