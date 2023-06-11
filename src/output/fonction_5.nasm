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
	mov	eax,	[ebp+12]			 ; read <arbre_abstrait.Parameter object at 0x7fbfda9a18a0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7fbfda9a18a0>
	mov	eax,	[ebp+8]			 ; read <arbre_abstrait.Parameter object at 0x7fbfda9a1990>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7fbfda9a1990>
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setg	al				 ; met 1 dans al si eax > ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
	pop	eax		
	leave			
	ret			
	leave			
	ret			
_g:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	0	
	mov	eax,	[ebp+12]			 ; read <arbre_abstrait.Parameter object at 0x7fbfda9a1b70>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7fbfda9a1b70>
	pop	eax		
	cmp	eax,	0	
	je	e0		
	mov	eax,	[ebp+8]			 ; read <arbre_abstrait.Parameter object at 0x7fbfda9a1de0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7fbfda9a1de0>
	pop	eax		
	leave			
	ret			
	jmp	e1		
e0:
e1:
	push	eax		
	push	-1		
	mov	eax,	[ebp+8]			 ; read <arbre_abstrait.Parameter object at 0x7fbfda9a1de0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7fbfda9a1de0>
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
	pop	eax		
	leave			
	ret			
	leave			
	ret			
_h:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	0	
	mov	eax,	[ebp+16]			 ; read <arbre_abstrait.Parameter object at 0x7fbfda9a21a0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7fbfda9a21a0>
	mov	eax,	[ebp+12]			 ; read <arbre_abstrait.Parameter object at 0x7fbfda9a2350>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7fbfda9a2350>
	mov	eax,	[ebp+8]			 ; read <arbre_abstrait.Parameter object at 0x7fbfda9a2410>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7fbfda9a2410>
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
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
	push	1		
	push	2		
	call	_f		
	push	eax		
	pop	eax		
	call	iprintLF		
	push	0		
	push	4		
	call	_g		
	push	eax		
	pop	eax		
	call	iprintLF		
	push	1		
	push	5		
	call	_g		
	push	eax		
	pop	eax		
	call	iprintLF		
	push	1		
	push	2		
	push	3		
	call	_h		
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
