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
	push	2		
	pop	eax		
	leave			
	ret			
	leave			
	ret			
_g:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	0	
	push	4		
	pop	eax		
	leave			
	ret			
	leave			
	ret			
_h:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	0	
	push	1		
	pop	eax		
	leave			
	ret			
	leave			
	ret			
main:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	0	
	call	_f		
	push	eax		
	call	_g		
	push	eax		
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
	pop	eax		
	call	iprintLF		
	call	_h		
	push	eax		
	pop	eax				 ; dépile la permière operande dans eax
	xor	eax,	1			 ; effectue l'opération non eax et met le résultat dans eax
	push	eax				 ; empile le résultat
	pop	eax		
	call	iprintLF		
	leave			
	ret			
_start:
	call	main		
	mov	eax,	1			 ; 1 est le code de SYS_EXIT
	mov	ebx,	0			 ; 0 est le code de retour correct ici
	int	0x80				 ; exit
