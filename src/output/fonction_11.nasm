%include	"io.asm"
section	.bss
sinput:	resb	255	;reserve a 255 byte space in memory for the users input string
v$a:	resd	1
section	.text
global _start
_maximum2:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	0	
	mov	eax,	[ebp+12]			 ; read <arbre_abstrait.Parameter object at 0x7ff06ce09a80>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7ff06ce09a80>
	mov	eax,	[ebp+8]			 ; read <arbre_abstrait.Parameter object at 0x7ff06ce09b70>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7ff06ce09b70>
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setg	al				 ; met 1 dans al si eax > ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
	pop	eax		
	cmp	eax,	0	
	je	e0		
	mov	eax,	[ebp+12]			 ; read <arbre_abstrait.Parameter object at 0x7ff06ce09a80>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7ff06ce09a80>
	pop	eax		
	leave			
	ret			
	jmp	e1		
e0:
e1:
	push	eax		
	mov	eax,	[ebp+8]			 ; read <arbre_abstrait.Parameter object at 0x7ff06ce09b70>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7ff06ce09b70>
	pop	eax		
	leave			
	ret			
	leave			
	ret			
_maximum3:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	0	
	mov	eax,	[ebp+16]			 ; read <arbre_abstrait.Parameter object at 0x7ff06ce0a230>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7ff06ce0a230>
	mov	eax,	[ebp+12]			 ; read <arbre_abstrait.Parameter object at 0x7ff06ce0a2f0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7ff06ce0a2f0>
	call	_maximum2		
	push	eax		
	mov	eax,	[ebp+8]			 ; read <arbre_abstrait.Parameter object at 0x7ff06ce0a290>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7ff06ce0a290>
	call	_maximum2		
	push	eax		
	pop	eax		
	leave			
	ret			
	leave			
	ret			
main:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	0	
	push	1		
	push	2		
	push	3		
	call	_maximum3		
	push	eax		
	pop	eax		
	call	iprintLF		
	push	1		
	push	3		
	push	2		
	call	_maximum3		
	push	eax		
	pop	eax		
	call	iprintLF		
	push	2		
	push	1		
	push	3		
	call	_maximum3		
	push	eax		
	pop	eax		
	call	iprintLF		
	push	2		
	push	1		
	push	3		
	call	_maximum3		
	push	eax		
	pop	eax		
	call	iprintLF		
	push	3		
	push	1		
	push	2		
	call	_maximum3		
	push	eax		
	pop	eax		
	call	iprintLF		
	push	3		
	push	2		
	push	1		
	call	_maximum3		
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
