%include	"io.asm"
section	.bss
sinput:	resb	255	;reserve a 255 byte space in memory for the users input string
v$a:	resd	1
section	.text
global _start
		 ; ===== Generating function declarations =====
		 ; ===== Generating function maximum2 =====
_maximum2:
		 ; ===== Initialising function maximum2 =====
	push	ebp		
	mov	ebp,	esp	
		 ; ===== Storing arguments of function maximum2 =====
		 ; ===== Storing argument e1 =====
		 ; ===== Stored argument e1 at offset +12 =====
		 ; ===== Storing argument e2 =====
		 ; ===== Stored argument e2 at offset +8 =====
		 ; ===== Allocating local variables of function maximum2 =====
		 ; ===== Found 0 local variables in function maximum2 =====
	sub	esp,	0			 ; Substracting space for local variables from esp (0)
		 ; ===== Generating instructions of function maximum2 =====
		 ; ===== Generating condition =====
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
	pop	eax		
	cmp	eax,	0	
	je	e0		
		 ; ===== Generating return statement =====
		 ; ===== Generating expression VariableRead(e1, entier) =====
		 ; ===== Generating variable read Parameter(entier, e1) =====
	mov	eax,	[ebp+12]			 ; read Parameter(entier, e1)
	push	eax				 ; push Parameter(entier, e1) on stack
		 ; ===== Finished generating variable read Parameter(entier, e1) =====
		 ; ===== Finished generating expression VariableRead(e1, entier) =====
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
		 ; ===== Finished generating instructions of function maximum2 =====
		 ; ===== Cleaning up function maximum2 =====
	leave					 ; Clean up stack
	ret					 ; Return to caller
		 ; ===== Finished cleaning up function maximum2 =====
		 ; ===== Finished generating function maximum2 =====
		 ; ===== Generating function maximum3 =====
_maximum3:
		 ; ===== Initialising function maximum3 =====
	push	ebp		
	mov	ebp,	esp	
		 ; ===== Storing arguments of function maximum3 =====
		 ; ===== Storing argument e1 =====
		 ; ===== Stored argument e1 at offset +16 =====
		 ; ===== Storing argument e2 =====
		 ; ===== Stored argument e2 at offset +12 =====
		 ; ===== Storing argument e3 =====
		 ; ===== Stored argument e3 at offset +8 =====
		 ; ===== Allocating local variables of function maximum3 =====
		 ; ===== Found 0 local variables in function maximum3 =====
	sub	esp,	0			 ; Substracting space for local variables from esp (0)
		 ; ===== Generating instructions of function maximum3 =====
		 ; ===== Generating return statement =====
		 ; ===== Generating expression FunctionCall(maximum2, [<arbre_abstrait.FunctionCall object at 0x7f9947fb2e90>, <arbre_abstrait.VariableRead object at 0x7f9947fb2f20>], entier, FunctionDeclaration(entier, maximum2, [<arbre_abstrait.Parameter object at 0x7f9947fb2920>, <arbre_abstrait.Parameter object at 0x7f9947fb2a10>])) =====
		 ; ===== Generating expression FunctionCall(maximum2, [<arbre_abstrait.VariableRead object at 0x7f9947fb3010>, <arbre_abstrait.VariableRead object at 0x7f9947fb3040>], entier, FunctionDeclaration(entier, maximum2, [<arbre_abstrait.Parameter object at 0x7f9947fb2920>, <arbre_abstrait.Parameter object at 0x7f9947fb2a10>])) =====
		 ; ===== Generating expression VariableRead(e1, entier) =====
		 ; ===== Generating variable read Parameter(entier, e1) =====
	mov	eax,	[ebp+16]			 ; read Parameter(entier, e1)
	push	eax				 ; push Parameter(entier, e1) on stack
		 ; ===== Finished generating variable read Parameter(entier, e1) =====
		 ; ===== Finished generating expression VariableRead(e1, entier) =====
		 ; ===== Generating expression VariableRead(e2, entier) =====
		 ; ===== Generating variable read Parameter(entier, e2) =====
	mov	eax,	[ebp+12]			 ; read Parameter(entier, e2)
	push	eax				 ; push Parameter(entier, e2) on stack
		 ; ===== Finished generating variable read Parameter(entier, e2) =====
		 ; ===== Finished generating expression VariableRead(e2, entier) =====
	call	_maximum2		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(maximum2, [<arbre_abstrait.VariableRead object at 0x7f9947fb3010>, <arbre_abstrait.VariableRead object at 0x7f9947fb3040>], entier, FunctionDeclaration(entier, maximum2, [<arbre_abstrait.Parameter object at 0x7f9947fb2920>, <arbre_abstrait.Parameter object at 0x7f9947fb2a10>])) =====
		 ; ===== Generating expression VariableRead(e3, entier) =====
		 ; ===== Generating variable read Parameter(entier, e3) =====
	mov	eax,	[ebp+8]			 ; read Parameter(entier, e3)
	push	eax				 ; push Parameter(entier, e3) on stack
		 ; ===== Finished generating variable read Parameter(entier, e3) =====
		 ; ===== Finished generating expression VariableRead(e3, entier) =====
	call	_maximum2		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(maximum2, [<arbre_abstrait.FunctionCall object at 0x7f9947fb2e90>, <arbre_abstrait.VariableRead object at 0x7f9947fb2f20>], entier, FunctionDeclaration(entier, maximum2, [<arbre_abstrait.Parameter object at 0x7f9947fb2920>, <arbre_abstrait.Parameter object at 0x7f9947fb2a10>])) =====
	pop	eax				 ; Pop return value from stack
	leave					 ; Clean up stack
	ret					 ; Return to caller
		 ; ===== Finished generating return statement =====
		 ; ===== Finished generating instructions of function maximum3 =====
		 ; ===== Cleaning up function maximum3 =====
	leave					 ; Clean up stack
	ret					 ; Return to caller
		 ; ===== Finished cleaning up function maximum3 =====
		 ; ===== Finished generating function maximum3 =====
		 ; ===== End of function declarations =====
		 ; ===== Generating main function =====
main:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	0	
		 ; ===== Generating expression FunctionCall(maximum3, [<arbre_abstrait.Entier object at 0x7f9947fb3250>, <arbre_abstrait.Entier object at 0x7f9947fb3280>, <arbre_abstrait.Entier object at 0x7f9947fb3340>], entier, FunctionDeclaration(entier, maximum3, [<arbre_abstrait.Parameter object at 0x7f9947fb30d0>, <arbre_abstrait.Parameter object at 0x7f9947fb3190>, <arbre_abstrait.Parameter object at 0x7f9947fb3130>])) =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
	call	_maximum3		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(maximum3, [<arbre_abstrait.Entier object at 0x7f9947fb3250>, <arbre_abstrait.Entier object at 0x7f9947fb3280>, <arbre_abstrait.Entier object at 0x7f9947fb3340>], entier, FunctionDeclaration(entier, maximum3, [<arbre_abstrait.Parameter object at 0x7f9947fb30d0>, <arbre_abstrait.Parameter object at 0x7f9947fb3190>, <arbre_abstrait.Parameter object at 0x7f9947fb3130>])) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression FunctionCall(maximum3, [<arbre_abstrait.Entier object at 0x7f9947fb3640>, <arbre_abstrait.Entier object at 0x7f9947fb36a0>, <arbre_abstrait.Entier object at 0x7f9947fb3700>], entier, FunctionDeclaration(entier, maximum3, [<arbre_abstrait.Parameter object at 0x7f9947fb30d0>, <arbre_abstrait.Parameter object at 0x7f9947fb3190>, <arbre_abstrait.Parameter object at 0x7f9947fb3130>])) =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	call	_maximum3		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(maximum3, [<arbre_abstrait.Entier object at 0x7f9947fb3640>, <arbre_abstrait.Entier object at 0x7f9947fb36a0>, <arbre_abstrait.Entier object at 0x7f9947fb3700>], entier, FunctionDeclaration(entier, maximum3, [<arbre_abstrait.Parameter object at 0x7f9947fb30d0>, <arbre_abstrait.Parameter object at 0x7f9947fb3190>, <arbre_abstrait.Parameter object at 0x7f9947fb3130>])) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression FunctionCall(maximum3, [<arbre_abstrait.Entier object at 0x7f9947fb2410>, <arbre_abstrait.Entier object at 0x7f9947fb24d0>, <arbre_abstrait.Entier object at 0x7f9947fb21a0>], entier, FunctionDeclaration(entier, maximum3, [<arbre_abstrait.Parameter object at 0x7f9947fb30d0>, <arbre_abstrait.Parameter object at 0x7f9947fb3190>, <arbre_abstrait.Parameter object at 0x7f9947fb3130>])) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
	call	_maximum3		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(maximum3, [<arbre_abstrait.Entier object at 0x7f9947fb2410>, <arbre_abstrait.Entier object at 0x7f9947fb24d0>, <arbre_abstrait.Entier object at 0x7f9947fb21a0>], entier, FunctionDeclaration(entier, maximum3, [<arbre_abstrait.Parameter object at 0x7f9947fb30d0>, <arbre_abstrait.Parameter object at 0x7f9947fb3190>, <arbre_abstrait.Parameter object at 0x7f9947fb3130>])) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression FunctionCall(maximum3, [<arbre_abstrait.Entier object at 0x7f9947fb3880>, <arbre_abstrait.Entier object at 0x7f9947fb38e0>, <arbre_abstrait.Entier object at 0x7f9947fb3940>], entier, FunctionDeclaration(entier, maximum3, [<arbre_abstrait.Parameter object at 0x7f9947fb30d0>, <arbre_abstrait.Parameter object at 0x7f9947fb3190>, <arbre_abstrait.Parameter object at 0x7f9947fb3130>])) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
	call	_maximum3		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(maximum3, [<arbre_abstrait.Entier object at 0x7f9947fb3880>, <arbre_abstrait.Entier object at 0x7f9947fb38e0>, <arbre_abstrait.Entier object at 0x7f9947fb3940>], entier, FunctionDeclaration(entier, maximum3, [<arbre_abstrait.Parameter object at 0x7f9947fb30d0>, <arbre_abstrait.Parameter object at 0x7f9947fb3190>, <arbre_abstrait.Parameter object at 0x7f9947fb3130>])) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression FunctionCall(maximum3, [<arbre_abstrait.Entier object at 0x7f9947fb3ac0>, <arbre_abstrait.Entier object at 0x7f9947fb3b20>, <arbre_abstrait.Entier object at 0x7f9947fb3b80>], entier, FunctionDeclaration(entier, maximum3, [<arbre_abstrait.Parameter object at 0x7f9947fb30d0>, <arbre_abstrait.Parameter object at 0x7f9947fb3190>, <arbre_abstrait.Parameter object at 0x7f9947fb3130>])) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	call	_maximum3		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(maximum3, [<arbre_abstrait.Entier object at 0x7f9947fb3ac0>, <arbre_abstrait.Entier object at 0x7f9947fb3b20>, <arbre_abstrait.Entier object at 0x7f9947fb3b80>], entier, FunctionDeclaration(entier, maximum3, [<arbre_abstrait.Parameter object at 0x7f9947fb30d0>, <arbre_abstrait.Parameter object at 0x7f9947fb3190>, <arbre_abstrait.Parameter object at 0x7f9947fb3130>])) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression FunctionCall(maximum3, [<arbre_abstrait.Entier object at 0x7f9947fb3d00>, <arbre_abstrait.Entier object at 0x7f9947fb3d60>, <arbre_abstrait.Entier object at 0x7f9947fb3dc0>], entier, FunctionDeclaration(entier, maximum3, [<arbre_abstrait.Parameter object at 0x7f9947fb30d0>, <arbre_abstrait.Parameter object at 0x7f9947fb3190>, <arbre_abstrait.Parameter object at 0x7f9947fb3130>])) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
	call	_maximum3		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(maximum3, [<arbre_abstrait.Entier object at 0x7f9947fb3d00>, <arbre_abstrait.Entier object at 0x7f9947fb3d60>, <arbre_abstrait.Entier object at 0x7f9947fb3dc0>], entier, FunctionDeclaration(entier, maximum3, [<arbre_abstrait.Parameter object at 0x7f9947fb30d0>, <arbre_abstrait.Parameter object at 0x7f9947fb3190>, <arbre_abstrait.Parameter object at 0x7f9947fb3130>])) =====
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
