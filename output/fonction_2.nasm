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
		 ; ===== Allocating local variables of function f =====
		 ; ===== Found 0 local variables in function f =====
	sub	esp,	0			 ; Substracting space for local variables from esp (0)
		 ; ===== Generating instructions of function f =====
		 ; ===== Generating return statement =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
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
		 ; ===== Allocating local variables of function g =====
		 ; ===== Found 0 local variables in function g =====
	sub	esp,	0			 ; Substracting space for local variables from esp (0)
		 ; ===== Generating instructions of function g =====
		 ; ===== Generating return statement =====
		 ; ===== Generating expression Entier(4) =====
	push	4		
		 ; ===== Finished generating expression Entier(4) =====
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
		 ; ===== Allocating local variables of function h =====
		 ; ===== Found 0 local variables in function h =====
	sub	esp,	0			 ; Substracting space for local variables from esp (0)
		 ; ===== Generating instructions of function h =====
		 ; ===== Generating return statement =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
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
		 ; ===== Generating expression Operation(FunctionCall(f, , entier, FunctionDeclaration(entier, f, )), OperationEnum.PLUS, FunctionCall(g, , entier, FunctionDeclaration(entier, g, ))) =====
		 ; ===== Generating operation Operation(FunctionCall(f, , entier, FunctionDeclaration(entier, f, )), OperationEnum.PLUS, FunctionCall(g, , entier, FunctionDeclaration(entier, g, ))) =====
		 ; ===== Generating expression FunctionCall(f, , entier, FunctionDeclaration(entier, f, )) =====
	call	_f		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(f, , entier, FunctionDeclaration(entier, f, )) =====
		 ; ===== Generating expression FunctionCall(g, , entier, FunctionDeclaration(entier, g, )) =====
	call	_g		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(g, , entier, FunctionDeclaration(entier, g, )) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(FunctionCall(f, , entier, FunctionDeclaration(entier, f, )), OperationEnum.PLUS, FunctionCall(g, , entier, FunctionDeclaration(entier, g, ))) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(FunctionCall(h, , booleen, FunctionDeclaration(booleen, h, )), OperationEnum.NOT, None) =====
		 ; ===== Generating operation Operation(FunctionCall(h, , booleen, FunctionDeclaration(booleen, h, )), OperationEnum.NOT, None) =====
		 ; ===== Generating expression FunctionCall(h, , booleen, FunctionDeclaration(booleen, h, )) =====
	call	_h		
	push	eax		
		 ; ===== Finished generating expression FunctionCall(h, , booleen, FunctionDeclaration(booleen, h, )) =====
	pop	eax				 ; dépile la permière operande dans eax
	xor	eax,	1			 ; effectue l'opération non eax et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.NOT =====
		 ; ===== Finished generating expression Operation(FunctionCall(h, , booleen, FunctionDeclaration(booleen, h, )), OperationEnum.NOT, None) =====
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
