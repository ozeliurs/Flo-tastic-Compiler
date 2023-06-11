%include	"io.asm"
section	.bss
sinput:	resb	255	;reserve a 255 byte space in memory for the users input string
v$a:	resd	1
section	.text
global _start
_fibo:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	0	
	mov	eax,	[ebp+8]			 ; read <arbre_abstrait.Parameter object at 0x7f5dd5cdd6c0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7f5dd5cdd6c0>
	push	1		
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setle	al				 ; met 1 dans al si eax <= ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
	pop	eax		
	cmp	eax,	0	
	je	e0		
	push	1		
	pop	eax		
	leave			
	ret			
	jmp	e1		
e0:
e1:
	push	eax		
	mov	eax,	[ebp+8]			 ; read <arbre_abstrait.Parameter object at 0x7f5dd5cdd6c0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7f5dd5cdd6c0>
	push	1		
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	sub	eax,	ebx			 ; effectue l'opération eaxOperationEnum.MINUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
	call	_fibo		
	push	eax		
	mov	eax,	[ebp+8]			 ; read <arbre_abstrait.Parameter object at 0x7f5dd5cdd6c0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7f5dd5cdd6c0>
	push	2		
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	sub	eax,	ebx			 ; effectue l'opération eaxOperationEnum.MINUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
	call	_fibo		
	push	eax		
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
	pop	eax		
	leave			
	ret			
	leave			
	ret			
main:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	0	
	push	0		
	call	_fibo		
	push	eax		
	pop	eax		
	call	iprintLF		
	push	1		
	call	_fibo		
	push	eax		
	pop	eax		
	call	iprintLF		
	push	2		
	call	_fibo		
	push	eax		
	pop	eax		
	call	iprintLF		
	push	3		
	call	_fibo		
	push	eax		
	pop	eax		
	call	iprintLF		
	push	4		
	call	_fibo		
	push	eax		
	pop	eax		
	call	iprintLF		
	push	5		
	call	_fibo		
	push	eax		
	pop	eax		
	call	iprintLF		
	push	6		
	call	_fibo		
	push	eax		
	pop	eax		
	call	iprintLF		
	push	7		
	call	_fibo		
	push	eax		
	pop	eax		
	call	iprintLF		
	leave			
	ret			
_start:
	call	main		
	mov	eax,	1			 ; 1 est le code de SYS_EXIT
	mov	ebx,	0			 ; 0 est le code de retour correct ici
	int	0x80				 ; exit
