%include	"io.asm"
section	.bss
sinput:	resb	255	;reserve a 255 byte space in memory for the users input string
v$a:	resd	1
section	.text
global _start
_f:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	0	
	push	7		
	pop	eax		
	mov	[ebp+8],	eax	
	mov	eax,	[ebp+8]			 ; read <arbre_abstrait.Parameter object at 0x7fb2c98f4910>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7fb2c98f4910>
	pop	eax		
	call	iprintLF		
	push	5		
	pop	eax		
	leave			
	ret			
	leave			
	ret			
main:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	0	
	push	5		
	call	_f		
	push	eax		
	leave			
	ret			
_start:
	call	main		
	mov	eax,	1			 ; 1 est le code de SYS_EXIT
	mov	ebx,	0			 ; 0 est le code de retour correct ici
	int	0x80				 ; exit
