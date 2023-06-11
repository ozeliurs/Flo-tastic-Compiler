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
		 ; ===== Storing argument x =====
		 ; ===== Stored argument x at offset +8 =====
		 ; ===== Allocating local variables of function f =====
		 ; ===== Found 1 local variables in function f =====
	sub	esp,	4			 ; Substracting space for local variables from esp (4)
		 ; ===== Storing local variable y =====
		 ; ===== Stored local variable y at offset -4 =====
		 ; ===== Generating instructions of function f =====
		 ; ===== Generating expression Entier(8) =====
	push	8		
		 ; ===== Finished generating expression Entier(8) =====
	pop	eax		
	mov	[ebp-4],	eax	
		 ; ===== Generating return statement =====
		 ; ===== Generating expression Operation(VariableRead(x, entier), OperationEnum.PLUS, VariableRead(y, entier)) =====
		 ; ===== Generating operation Operation(VariableRead(x, entier), OperationEnum.PLUS, VariableRead(y, entier)) =====
		 ; ===== Generating expression VariableRead(x, entier) =====
		 ; ===== Generating variable read Parameter(entier, x) =====
	mov	eax,	[ebp+8]			 ; read Parameter(entier, x)
	push	eax				 ; push Parameter(entier, x) on stack
		 ; ===== Finished generating variable read Parameter(entier, x) =====
		 ; ===== Finished generating expression VariableRead(x, entier) =====
		 ; ===== Generating expression VariableRead(y, entier) =====
		 ; ===== Generating variable read VariableDefinitionAssignment(entier, y, Entier(8), -4) =====
	mov	eax,	[ebp-4]			 ; read VariableDefinitionAssignment(entier, y, Entier(8), -4)
	push	eax				 ; push VariableDefinitionAssignment(entier, y, Entier(8), -4) on stack
		 ; ===== Finished generating variable read VariableDefinitionAssignment(entier, y, Entier(8), -4) =====
		 ; ===== Finished generating expression VariableRead(y, entier) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(VariableRead(x, entier), OperationEnum.PLUS, VariableRead(y, entier)) =====
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
		 ; ===== End of function declarations =====
		 ; ===== Generating main function =====
main:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	0	
		 ; ===== Generating expression FunctionCall(f, Entier(5), , entier, FunctionDeclaration(entier, f, Parameter(entier, x))) =====
		 ; ===== Generating expression Entier(5) =====
	push	5		
		 ; ===== Finished generating expression Entier(5) =====
	call	_f		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(f, Entier(5), , entier, FunctionDeclaration(entier, f, Parameter(entier, x))) =====
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
