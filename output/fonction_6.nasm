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
		 ; ===== Storing argument e =====
		 ; ===== Stored argument e at offset +8 =====
		 ; ===== Allocating local variables of function f =====
		 ; ===== Found 0 local variables in function f =====
	sub	esp,	0			 ; Substracting space for local variables from esp (0)
		 ; ===== Generating instructions of function f =====
		 ; ===== Generating expression VariableRead(e, entier) =====
		 ; ===== Generating variable read Parameter(entier, e) =====
	mov	eax,	[ebp+8]			 ; read Parameter(entier, e)
	push	eax				 ; push Parameter(entier, e) on stack
		 ; ===== Finished generating variable read Parameter(entier, e) =====
		 ; ===== Finished generating expression VariableRead(e, entier) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating return statement =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
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
		 ; ===== Generating expression Entier(5) =====
	push	5		
		 ; ===== Finished generating expression Entier(5) =====
	call	_f		
	push	eax		
	leave			
	ret			
		 ; ===== End of main function =====
_start:
	call	main		
	mov	eax,	1			 ; 1 est le code de SYS_EXIT
	mov	ebx,	0			 ; 0 est le code de retour correct ici
	int	0x80				 ; exit
