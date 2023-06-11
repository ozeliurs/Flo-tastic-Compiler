%include	"io.asm"
section	.bss
sinput:	resb	255	;reserve a 255 byte space in memory for the users input string
v$a:	resd	1
section	.text
global _start
		 ; ===== Generating function declarations =====
		 ; ===== Generating function double =====
_double:
		 ; ===== Initialising function double =====
	push	ebp		
	mov	ebp,	esp	
		 ; ===== Storing arguments of function double =====
		 ; ===== Storing argument e =====
		 ; ===== Stored argument e at offset +8 =====
		 ; ===== Allocating local variables of function double =====
		 ; ===== Found 0 local variables in function double =====
	sub	esp,	0			 ; Substracting space for local variables from esp (0)
		 ; ===== Generating instructions of function double =====
		 ; ===== Generating variable assignment Parameter(entier, e) =====
		 ; ===== Generating expression Operation(VariableRead(e, entier), OperationEnum.PLUS, VariableRead(e, entier)) =====
		 ; ===== Generating operation Operation(VariableRead(e, entier), OperationEnum.PLUS, VariableRead(e, entier)) =====
		 ; ===== Generating expression VariableRead(e, entier) =====
		 ; ===== Generating variable read Parameter(entier, e) =====
	mov	eax,	[ebp+8]			 ; read Parameter(entier, e)
	push	eax				 ; push Parameter(entier, e) on stack
		 ; ===== Finished generating variable read Parameter(entier, e) =====
		 ; ===== Finished generating expression VariableRead(e, entier) =====
		 ; ===== Generating expression VariableRead(e, entier) =====
		 ; ===== Generating variable read Parameter(entier, e) =====
	mov	eax,	[ebp+8]			 ; read Parameter(entier, e)
	push	eax				 ; push Parameter(entier, e) on stack
		 ; ===== Finished generating variable read Parameter(entier, e) =====
		 ; ===== Finished generating expression VariableRead(e, entier) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(VariableRead(e, entier), OperationEnum.PLUS, VariableRead(e, entier)) =====
	pop	eax				 ; pop value from stack
	mov	[ebp+8],	eax			 ; assign value to variable
		 ; ===== Finished generating variable assignment Parameter(entier, e) =====
		 ; ===== Generating return statement =====
		 ; ===== Generating expression VariableRead(e, entier) =====
		 ; ===== Generating variable read Parameter(entier, e) =====
	mov	eax,	[ebp+8]			 ; read Parameter(entier, e)
	push	eax				 ; push Parameter(entier, e) on stack
		 ; ===== Finished generating variable read Parameter(entier, e) =====
		 ; ===== Finished generating expression VariableRead(e, entier) =====
	pop	eax				 ; Pop return value from stack
	leave					 ; Clean up stack
	ret					 ; Return to caller
		 ; ===== Finished generating return statement =====
		 ; ===== Finished generating instructions of function double =====
		 ; ===== Cleaning up function double =====
	leave					 ; Clean up stack
	ret					 ; Return to caller
		 ; ===== Finished cleaning up function double =====
		 ; ===== Finished generating function double =====
		 ; ===== Generating function quadriple =====
_quadriple:
		 ; ===== Initialising function quadriple =====
	push	ebp		
	mov	ebp,	esp	
		 ; ===== Storing arguments of function quadriple =====
		 ; ===== Storing argument e =====
		 ; ===== Stored argument e at offset +8 =====
		 ; ===== Allocating local variables of function quadriple =====
		 ; ===== Found 0 local variables in function quadriple =====
	sub	esp,	0			 ; Substracting space for local variables from esp (0)
		 ; ===== Generating instructions of function quadriple =====
		 ; ===== Generating expression Entier(5) =====
	push	5		
		 ; ===== Finished generating expression Entier(5) =====
	call	_double		
	push	eax		
		 ; ===== Generating return statement =====
		 ; ===== Generating expression Operation(FunctionCall(double, VariableRead(e, entier), , entier, FunctionDeclaration(entier, double, Parameter(entier, e))), OperationEnum.PLUS, FunctionCall(double, VariableRead(e, entier), , entier, FunctionDeclaration(entier, double, Parameter(entier, e)))) =====
		 ; ===== Generating operation Operation(FunctionCall(double, VariableRead(e, entier), , entier, FunctionDeclaration(entier, double, Parameter(entier, e))), OperationEnum.PLUS, FunctionCall(double, VariableRead(e, entier), , entier, FunctionDeclaration(entier, double, Parameter(entier, e)))) =====
		 ; ===== Generating expression FunctionCall(double, VariableRead(e, entier), , entier, FunctionDeclaration(entier, double, Parameter(entier, e))) =====
		 ; ===== Generating expression VariableRead(e, entier) =====
		 ; ===== Generating variable read Parameter(entier, e) =====
	mov	eax,	[ebp+8]			 ; read Parameter(entier, e)
	push	eax				 ; push Parameter(entier, e) on stack
		 ; ===== Finished generating variable read Parameter(entier, e) =====
		 ; ===== Finished generating expression VariableRead(e, entier) =====
	call	_double		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(double, VariableRead(e, entier), , entier, FunctionDeclaration(entier, double, Parameter(entier, e))) =====
		 ; ===== Generating expression FunctionCall(double, VariableRead(e, entier), , entier, FunctionDeclaration(entier, double, Parameter(entier, e))) =====
		 ; ===== Generating expression VariableRead(e, entier) =====
		 ; ===== Generating variable read Parameter(entier, e) =====
	mov	eax,	[ebp+8]			 ; read Parameter(entier, e)
	push	eax				 ; push Parameter(entier, e) on stack
		 ; ===== Finished generating variable read Parameter(entier, e) =====
		 ; ===== Finished generating expression VariableRead(e, entier) =====
	call	_double		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(double, VariableRead(e, entier), , entier, FunctionDeclaration(entier, double, Parameter(entier, e))) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(FunctionCall(double, VariableRead(e, entier), , entier, FunctionDeclaration(entier, double, Parameter(entier, e))), OperationEnum.PLUS, FunctionCall(double, VariableRead(e, entier), , entier, FunctionDeclaration(entier, double, Parameter(entier, e)))) =====
	pop	eax				 ; Pop return value from stack
	leave					 ; Clean up stack
	ret					 ; Return to caller
		 ; ===== Finished generating return statement =====
		 ; ===== Finished generating instructions of function quadriple =====
		 ; ===== Cleaning up function quadriple =====
	leave					 ; Clean up stack
	ret					 ; Return to caller
		 ; ===== Finished cleaning up function quadriple =====
		 ; ===== Finished generating function quadriple =====
		 ; ===== End of function declarations =====
		 ; ===== Generating main function =====
main:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	0	
		 ; ===== Generating expression Entier(5) =====
	push	5		
		 ; ===== Finished generating expression Entier(5) =====
	call	_double		
	push	eax		
		 ; ===== Generating expression FunctionCall(quadriple, Entier(10), , entier, FunctionDeclaration(entier, quadriple, Parameter(entier, e))) =====
		 ; ===== Generating expression Entier(10) =====
	push	10		
		 ; ===== Finished generating expression Entier(10) =====
	call	_quadriple		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(quadriple, Entier(10), , entier, FunctionDeclaration(entier, quadriple, Parameter(entier, e))) =====
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
