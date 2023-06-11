%include	"io.asm"
section	.bss
sinput:	resb	255	;reserve a 255 byte space in memory for the users input string
v$a:	resd	1
section	.text
global _start
		 ; ===== Generating function declarations =====
		 ; ===== Generating function fibo =====
_fibo:
		 ; ===== Initialising function fibo =====
	push	ebp		
	mov	ebp,	esp	
		 ; ===== Storing arguments of function fibo =====
		 ; ===== Storing argument n =====
		 ; ===== Stored argument n at offset +8 =====
		 ; ===== Allocating local variables of function fibo =====
		 ; ===== Found 0 local variables in function fibo =====
	sub	esp,	0			 ; Substracting space for local variables from esp (0)
		 ; ===== Generating instructions of function fibo =====
		 ; ===== Generating condition =====
		 ; ===== Generating expression Operation(VariableRead(n, entier), OperationEnum.LESS_THAN_OR_EQUAL, Entier(1)) =====
		 ; ===== Generating operation Operation(VariableRead(n, entier), OperationEnum.LESS_THAN_OR_EQUAL, Entier(1)) =====
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
	cmp	eax,	ebx			 ; compare eax et ebx
	setle	al				 ; met 1 dans al si eax <= ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.LESS_THAN_OR_EQUAL =====
		 ; ===== Finished generating expression Operation(VariableRead(n, entier), OperationEnum.LESS_THAN_OR_EQUAL, Entier(1)) =====
	pop	eax		
	cmp	eax,	0	
	je	e0		
		 ; ===== Generating return statement =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
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
		 ; ===== Generating expression Operation(FunctionCall(fibo, [<arbre_abstrait.Operation object at 0x7fa060d6a9b0>], entier, FunctionDeclaration(entier, fibo, [<arbre_abstrait.Parameter object at 0x7fa060d6a560>])), OperationEnum.PLUS, FunctionCall(fibo, [<arbre_abstrait.Operation object at 0x7fa060d6abc0>], entier, FunctionDeclaration(entier, fibo, [<arbre_abstrait.Parameter object at 0x7fa060d6a560>]))) =====
		 ; ===== Generating operation Operation(FunctionCall(fibo, [<arbre_abstrait.Operation object at 0x7fa060d6a9b0>], entier, FunctionDeclaration(entier, fibo, [<arbre_abstrait.Parameter object at 0x7fa060d6a560>])), OperationEnum.PLUS, FunctionCall(fibo, [<arbre_abstrait.Operation object at 0x7fa060d6abc0>], entier, FunctionDeclaration(entier, fibo, [<arbre_abstrait.Parameter object at 0x7fa060d6a560>]))) =====
		 ; ===== Generating expression FunctionCall(fibo, [<arbre_abstrait.Operation object at 0x7fa060d6a9b0>], entier, FunctionDeclaration(entier, fibo, [<arbre_abstrait.Parameter object at 0x7fa060d6a560>])) =====
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
	call	_fibo		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(fibo, [<arbre_abstrait.Operation object at 0x7fa060d6a9b0>], entier, FunctionDeclaration(entier, fibo, [<arbre_abstrait.Parameter object at 0x7fa060d6a560>])) =====
		 ; ===== Generating expression FunctionCall(fibo, [<arbre_abstrait.Operation object at 0x7fa060d6abc0>], entier, FunctionDeclaration(entier, fibo, [<arbre_abstrait.Parameter object at 0x7fa060d6a560>])) =====
		 ; ===== Generating expression Operation(VariableRead(n, entier), OperationEnum.MINUS, Entier(2)) =====
		 ; ===== Generating operation Operation(VariableRead(n, entier), OperationEnum.MINUS, Entier(2)) =====
		 ; ===== Generating expression VariableRead(n, entier) =====
		 ; ===== Generating variable read Parameter(entier, n) =====
	mov	eax,	[ebp+8]			 ; read Parameter(entier, n)
	push	eax				 ; push Parameter(entier, n) on stack
		 ; ===== Finished generating variable read Parameter(entier, n) =====
		 ; ===== Finished generating expression VariableRead(n, entier) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	sub	eax,	ebx			 ; effectue l'opération eaxOperationEnum.MINUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MINUS =====
		 ; ===== Finished generating expression Operation(VariableRead(n, entier), OperationEnum.MINUS, Entier(2)) =====
	call	_fibo		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(fibo, [<arbre_abstrait.Operation object at 0x7fa060d6abc0>], entier, FunctionDeclaration(entier, fibo, [<arbre_abstrait.Parameter object at 0x7fa060d6a560>])) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(FunctionCall(fibo, [<arbre_abstrait.Operation object at 0x7fa060d6a9b0>], entier, FunctionDeclaration(entier, fibo, [<arbre_abstrait.Parameter object at 0x7fa060d6a560>])), OperationEnum.PLUS, FunctionCall(fibo, [<arbre_abstrait.Operation object at 0x7fa060d6abc0>], entier, FunctionDeclaration(entier, fibo, [<arbre_abstrait.Parameter object at 0x7fa060d6a560>]))) =====
	pop	eax				 ; Pop return value from stack
	leave					 ; Clean up stack
	ret					 ; Return to caller
		 ; ===== Finished generating return statement =====
		 ; ===== Finished generating instructions of function fibo =====
		 ; ===== Cleaning up function fibo =====
	leave					 ; Clean up stack
	ret					 ; Return to caller
		 ; ===== Finished cleaning up function fibo =====
		 ; ===== Finished generating function fibo =====
		 ; ===== End of function declarations =====
		 ; ===== Generating main function =====
main:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	0	
		 ; ===== Generating expression FunctionCall(fibo, [<arbre_abstrait.Entier object at 0x7fa060d6ad70>], entier, FunctionDeclaration(entier, fibo, [<arbre_abstrait.Parameter object at 0x7fa060d6a560>])) =====
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	call	_fibo		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(fibo, [<arbre_abstrait.Entier object at 0x7fa060d6ad70>], entier, FunctionDeclaration(entier, fibo, [<arbre_abstrait.Parameter object at 0x7fa060d6a560>])) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression FunctionCall(fibo, [<arbre_abstrait.Entier object at 0x7fa060d6b070>], entier, FunctionDeclaration(entier, fibo, [<arbre_abstrait.Parameter object at 0x7fa060d6a560>])) =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
	call	_fibo		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(fibo, [<arbre_abstrait.Entier object at 0x7fa060d6b070>], entier, FunctionDeclaration(entier, fibo, [<arbre_abstrait.Parameter object at 0x7fa060d6a560>])) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression FunctionCall(fibo, [<arbre_abstrait.Entier object at 0x7fa060d6b1f0>], entier, FunctionDeclaration(entier, fibo, [<arbre_abstrait.Parameter object at 0x7fa060d6a560>])) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	call	_fibo		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(fibo, [<arbre_abstrait.Entier object at 0x7fa060d6b1f0>], entier, FunctionDeclaration(entier, fibo, [<arbre_abstrait.Parameter object at 0x7fa060d6a560>])) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression FunctionCall(fibo, [<arbre_abstrait.Entier object at 0x7fa060d6b370>], entier, FunctionDeclaration(entier, fibo, [<arbre_abstrait.Parameter object at 0x7fa060d6a560>])) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
	call	_fibo		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(fibo, [<arbre_abstrait.Entier object at 0x7fa060d6b370>], entier, FunctionDeclaration(entier, fibo, [<arbre_abstrait.Parameter object at 0x7fa060d6a560>])) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression FunctionCall(fibo, [<arbre_abstrait.Entier object at 0x7fa060d6b4f0>], entier, FunctionDeclaration(entier, fibo, [<arbre_abstrait.Parameter object at 0x7fa060d6a560>])) =====
		 ; ===== Generating expression Entier(4) =====
	push	4		
		 ; ===== Finished generating expression Entier(4) =====
	call	_fibo		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(fibo, [<arbre_abstrait.Entier object at 0x7fa060d6b4f0>], entier, FunctionDeclaration(entier, fibo, [<arbre_abstrait.Parameter object at 0x7fa060d6a560>])) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression FunctionCall(fibo, [<arbre_abstrait.Entier object at 0x7fa060d6b670>], entier, FunctionDeclaration(entier, fibo, [<arbre_abstrait.Parameter object at 0x7fa060d6a560>])) =====
		 ; ===== Generating expression Entier(5) =====
	push	5		
		 ; ===== Finished generating expression Entier(5) =====
	call	_fibo		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(fibo, [<arbre_abstrait.Entier object at 0x7fa060d6b670>], entier, FunctionDeclaration(entier, fibo, [<arbre_abstrait.Parameter object at 0x7fa060d6a560>])) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression FunctionCall(fibo, [<arbre_abstrait.Entier object at 0x7fa060d69ff0>], entier, FunctionDeclaration(entier, fibo, [<arbre_abstrait.Parameter object at 0x7fa060d6a560>])) =====
		 ; ===== Generating expression Entier(6) =====
	push	6		
		 ; ===== Finished generating expression Entier(6) =====
	call	_fibo		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(fibo, [<arbre_abstrait.Entier object at 0x7fa060d69ff0>], entier, FunctionDeclaration(entier, fibo, [<arbre_abstrait.Parameter object at 0x7fa060d6a560>])) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression FunctionCall(fibo, [<arbre_abstrait.Entier object at 0x7fa060d6b730>], entier, FunctionDeclaration(entier, fibo, [<arbre_abstrait.Parameter object at 0x7fa060d6a560>])) =====
		 ; ===== Generating expression Entier(7) =====
	push	7		
		 ; ===== Finished generating expression Entier(7) =====
	call	_fibo		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(fibo, [<arbre_abstrait.Entier object at 0x7fa060d6b730>], entier, FunctionDeclaration(entier, fibo, [<arbre_abstrait.Parameter object at 0x7fa060d6a560>])) =====
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
