%include	"io.asm"
section	.bss
sinput:	resb	255	;reserve a 255 byte space in memory for the users input string
v$a:	resd	1
section	.text
global _start
		 ; ===== Generating function declarations =====
		 ; ===== Generating function f =====
_f:
		 ; ===== Initialising function f =====
	push	ebp		
	mov	ebp,	esp	
		 ; ===== Storing arguments of function f =====
		 ; ===== Storing argument e1 =====
		 ; ===== Stored argument e1 at offset +12 =====
		 ; ===== Storing argument e2 =====
		 ; ===== Stored argument e2 at offset +8 =====
		 ; ===== Allocating local variables of function f =====
		 ; ===== Found 0 local variables in function f =====
	sub	esp,	0			 ; Substracting space for local variables from esp (0)
		 ; ===== Generating instructions of function f =====
		 ; ===== Generating return statement =====
		 ; ===== Generating expression Operation(VariableRead(e1, entier), OperationEnum.GREATER_THAN, VariableRead(e2, entier)) =====
		 ; ===== Generating operation Operation(VariableRead(e1, entier), OperationEnum.GREATER_THAN, VariableRead(e2, entier)) =====
		 ; ===== Generating expression VariableRead(e1, entier) =====
		 ; ===== Generating variable read Parameter(entier, e1) =====
	mov	eax,	[ebp+12]			 ; read Parameter(entier, e1)
	push	eax				 ; push Parameter(entier, e1) on stack
		 ; ===== Finished generating variable read Parameter(entier, e1) =====
		 ; ===== Finished generating expression VariableRead(e1, entier) =====
		 ; ===== Generating expression VariableRead(e2, entier) =====
		 ; ===== Generating variable read Parameter(entier, e2) =====
	mov	eax,	[ebp+8]			 ; read Parameter(entier, e2)
	push	eax				 ; push Parameter(entier, e2) on stack
		 ; ===== Finished generating variable read Parameter(entier, e2) =====
		 ; ===== Finished generating expression VariableRead(e2, entier) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setg	al				 ; met 1 dans al si eax > ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.GREATER_THAN =====
		 ; ===== Finished generating expression Operation(VariableRead(e1, entier), OperationEnum.GREATER_THAN, VariableRead(e2, entier)) =====
	pop	eax				 ; Pop return value from stack
	leave					 ; Clean up stack
	ret					 ; Return to caller
		 ; ===== Finished generating return statement =====
		 ; ===== Finished generating instructions of function f =====
		 ; ===== Cleaning up function f =====
	leave					 ; Clean up stack
	ret					 ; Return to caller
		 ; ===== Finished cleaning up function f =====
		 ; ===== Finished generating function f =====
		 ; ===== Generating function g =====
_g:
		 ; ===== Initialising function g =====
	push	ebp		
	mov	ebp,	esp	
		 ; ===== Storing arguments of function g =====
		 ; ===== Storing argument b1 =====
		 ; ===== Stored argument b1 at offset +12 =====
		 ; ===== Storing argument e2 =====
		 ; ===== Stored argument e2 at offset +8 =====
		 ; ===== Allocating local variables of function g =====
		 ; ===== Found 0 local variables in function g =====
	sub	esp,	0			 ; Substracting space for local variables from esp (0)
		 ; ===== Generating instructions of function g =====
		 ; ===== Generating condition =====
		 ; ===== Generating expression VariableRead(b1, booleen) =====
		 ; ===== Generating variable read Parameter(booleen, b1) =====
	mov	eax,	[ebp+12]			 ; read Parameter(booleen, b1)
	push	eax				 ; push Parameter(booleen, b1) on stack
		 ; ===== Finished generating variable read Parameter(booleen, b1) =====
		 ; ===== Finished generating expression VariableRead(b1, booleen) =====
	pop	eax		
	cmp	eax,	0	
	je	e0		
		 ; ===== Generating return statement =====
		 ; ===== Generating expression VariableRead(e2, entier) =====
		 ; ===== Generating variable read Parameter(entier, e2) =====
	mov	eax,	[ebp+8]			 ; read Parameter(entier, e2)
	push	eax				 ; push Parameter(entier, e2) on stack
		 ; ===== Finished generating variable read Parameter(entier, e2) =====
		 ; ===== Finished generating expression VariableRead(e2, entier) =====
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
		 ; ===== Generating expression Operation(Entier(-1), OperationEnum.MULTIPLY, VariableRead(e2, entier)) =====
		 ; ===== Generating operation Operation(Entier(-1), OperationEnum.MULTIPLY, VariableRead(e2, entier)) =====
		 ; ===== Generating expression Entier(-1) =====
	push	-1		
		 ; ===== Finished generating expression Entier(-1) =====
		 ; ===== Generating expression VariableRead(e2, entier) =====
		 ; ===== Generating variable read Parameter(entier, e2) =====
	mov	eax,	[ebp+8]			 ; read Parameter(entier, e2)
	push	eax				 ; push Parameter(entier, e2) on stack
		 ; ===== Finished generating variable read Parameter(entier, e2) =====
		 ; ===== Finished generating expression VariableRead(e2, entier) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(-1), OperationEnum.MULTIPLY, VariableRead(e2, entier)) =====
	pop	eax				 ; Pop return value from stack
	leave					 ; Clean up stack
	ret					 ; Return to caller
		 ; ===== Finished generating return statement =====
		 ; ===== Finished generating instructions of function g =====
		 ; ===== Cleaning up function g =====
	leave					 ; Clean up stack
	ret					 ; Return to caller
		 ; ===== Finished cleaning up function g =====
		 ; ===== Finished generating function g =====
		 ; ===== Generating function h =====
_h:
		 ; ===== Initialising function h =====
	push	ebp		
	mov	ebp,	esp	
		 ; ===== Storing arguments of function h =====
		 ; ===== Storing argument e1 =====
		 ; ===== Stored argument e1 at offset +16 =====
		 ; ===== Storing argument e2 =====
		 ; ===== Stored argument e2 at offset +12 =====
		 ; ===== Storing argument e3 =====
		 ; ===== Stored argument e3 at offset +8 =====
		 ; ===== Allocating local variables of function h =====
		 ; ===== Found 0 local variables in function h =====
	sub	esp,	0			 ; Substracting space for local variables from esp (0)
		 ; ===== Generating instructions of function h =====
		 ; ===== Generating return statement =====
		 ; ===== Generating expression Operation(VariableRead(e1, entier), OperationEnum.PLUS, Operation(VariableRead(e2, entier), OperationEnum.MULTIPLY, VariableRead(e3, entier))) =====
		 ; ===== Generating operation Operation(VariableRead(e1, entier), OperationEnum.PLUS, Operation(VariableRead(e2, entier), OperationEnum.MULTIPLY, VariableRead(e3, entier))) =====
		 ; ===== Generating expression VariableRead(e1, entier) =====
		 ; ===== Generating variable read Parameter(entier, e1) =====
	mov	eax,	[ebp+16]			 ; read Parameter(entier, e1)
	push	eax				 ; push Parameter(entier, e1) on stack
		 ; ===== Finished generating variable read Parameter(entier, e1) =====
		 ; ===== Finished generating expression VariableRead(e1, entier) =====
		 ; ===== Generating expression Operation(VariableRead(e2, entier), OperationEnum.MULTIPLY, VariableRead(e3, entier)) =====
		 ; ===== Generating operation Operation(VariableRead(e2, entier), OperationEnum.MULTIPLY, VariableRead(e3, entier)) =====
		 ; ===== Generating expression VariableRead(e2, entier) =====
		 ; ===== Generating variable read Parameter(entier, e2) =====
	mov	eax,	[ebp+12]			 ; read Parameter(entier, e2)
	push	eax				 ; push Parameter(entier, e2) on stack
		 ; ===== Finished generating variable read Parameter(entier, e2) =====
		 ; ===== Finished generating expression VariableRead(e2, entier) =====
		 ; ===== Generating expression VariableRead(e3, entier) =====
		 ; ===== Generating variable read Parameter(entier, e3) =====
	mov	eax,	[ebp+8]			 ; read Parameter(entier, e3)
	push	eax				 ; push Parameter(entier, e3) on stack
		 ; ===== Finished generating variable read Parameter(entier, e3) =====
		 ; ===== Finished generating expression VariableRead(e3, entier) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(VariableRead(e2, entier), OperationEnum.MULTIPLY, VariableRead(e3, entier)) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(VariableRead(e1, entier), OperationEnum.PLUS, Operation(VariableRead(e2, entier), OperationEnum.MULTIPLY, VariableRead(e3, entier))) =====
	pop	eax				 ; Pop return value from stack
	leave					 ; Clean up stack
	ret					 ; Return to caller
		 ; ===== Finished generating return statement =====
		 ; ===== Finished generating instructions of function h =====
		 ; ===== Cleaning up function h =====
	leave					 ; Clean up stack
	ret					 ; Return to caller
		 ; ===== Finished cleaning up function h =====
		 ; ===== Finished generating function h =====
		 ; ===== End of function declarations =====
		 ; ===== Generating main function =====
main:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	0	
		 ; ===== Generating expression FunctionCall(f, [<arbre_abstrait.Entier object at 0x7f6686d4b3d0>, <arbre_abstrait.Entier object at 0x7f6686d4b430>], booleen, FunctionDeclaration(booleen, f, [<arbre_abstrait.Parameter object at 0x7f6686d4a740>, <arbre_abstrait.Parameter object at 0x7f6686d4a830>])) =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	call	_f		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(f, [<arbre_abstrait.Entier object at 0x7f6686d4b3d0>, <arbre_abstrait.Entier object at 0x7f6686d4b430>], booleen, FunctionDeclaration(booleen, f, [<arbre_abstrait.Parameter object at 0x7f6686d4a740>, <arbre_abstrait.Parameter object at 0x7f6686d4a830>])) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression FunctionCall(g, [<arbre_abstrait.Boolean object at 0x7f6686d4b730>, <arbre_abstrait.Entier object at 0x7f6686d4b790>], entier, FunctionDeclaration(entier, g, [<arbre_abstrait.Parameter object at 0x7f6686d4aa10>, <arbre_abstrait.Parameter object at 0x7f6686d4ac80>])) =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
		 ; ===== Generating expression Entier(4) =====
	push	4		
		 ; ===== Finished generating expression Entier(4) =====
	call	_g		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(g, [<arbre_abstrait.Boolean object at 0x7f6686d4b730>, <arbre_abstrait.Entier object at 0x7f6686d4b790>], entier, FunctionDeclaration(entier, g, [<arbre_abstrait.Parameter object at 0x7f6686d4aa10>, <arbre_abstrait.Parameter object at 0x7f6686d4ac80>])) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression FunctionCall(g, [<arbre_abstrait.Boolean object at 0x7f6686d4a1d0>, <arbre_abstrait.Entier object at 0x7f6686d4a080>], entier, FunctionDeclaration(entier, g, [<arbre_abstrait.Parameter object at 0x7f6686d4aa10>, <arbre_abstrait.Parameter object at 0x7f6686d4ac80>])) =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
		 ; ===== Generating expression Entier(5) =====
	push	5		
		 ; ===== Finished generating expression Entier(5) =====
	call	_g		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(g, [<arbre_abstrait.Boolean object at 0x7f6686d4a1d0>, <arbre_abstrait.Entier object at 0x7f6686d4a080>], entier, FunctionDeclaration(entier, g, [<arbre_abstrait.Parameter object at 0x7f6686d4aa10>, <arbre_abstrait.Parameter object at 0x7f6686d4ac80>])) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression FunctionCall(h, [<arbre_abstrait.Entier object at 0x7f6686d4b8b0>, <arbre_abstrait.Entier object at 0x7f6686d4b910>, <arbre_abstrait.Entier object at 0x7f6686d4b970>], entier, FunctionDeclaration(entier, h, [<arbre_abstrait.Parameter object at 0x7f6686d4b040>, <arbre_abstrait.Parameter object at 0x7f6686d4b1f0>, <arbre_abstrait.Parameter object at 0x7f6686d4b2b0>])) =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
	call	_h		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(h, [<arbre_abstrait.Entier object at 0x7f6686d4b8b0>, <arbre_abstrait.Entier object at 0x7f6686d4b910>, <arbre_abstrait.Entier object at 0x7f6686d4b970>], entier, FunctionDeclaration(entier, h, [<arbre_abstrait.Parameter object at 0x7f6686d4b040>, <arbre_abstrait.Parameter object at 0x7f6686d4b1f0>, <arbre_abstrait.Parameter object at 0x7f6686d4b2b0>])) =====
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
