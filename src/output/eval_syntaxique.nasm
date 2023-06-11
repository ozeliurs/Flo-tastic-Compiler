%include	"io.asm"
section	.bss
sinput:	resb	255	;reserve a 255 byte space in memory for the users input string
v$a:	resd	1
section	.text
global _start
_estPair:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	0	
	mov	eax,	[ebp+8]			 ; read <arbre_abstrait.Parameter object at 0x7f2451acdcc0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7f2451acdcc0>
	push	0		
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	sete	al				 ; met 1 dans al si eax == ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
	pop	eax		
	leave			
	ret			
	leave			
	ret			
_max:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	0	
	mov	eax,	[ebp+12]			 ; read <arbre_abstrait.Parameter object at 0x7f2451ace020>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7f2451ace020>
	mov	eax,	[ebp+8]			 ; read <arbre_abstrait.Parameter object at 0x7f2451ace110>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7f2451ace110>
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setge	al				 ; met 1 dans al si eax >= ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
	pop	eax		
	cmp	eax,	0	
	je	e0		
	mov	eax,	[ebp+12]			 ; read <arbre_abstrait.Parameter object at 0x7f2451ace020>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7f2451ace020>
	pop	eax		
	leave			
	ret			
	jmp	e1		
e0:
e1:
	push	eax		
	mov	eax,	[ebp+8]			 ; read <arbre_abstrait.Parameter object at 0x7f2451ace110>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7f2451ace110>
	pop	eax		
	leave			
	ret			
	leave			
	ret			
_puissance:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	8	
	push	1		
	pop	eax		
	mov	[ebp-4],	eax	
	mov	eax,	[ebp+12]			 ; read <arbre_abstrait.Parameter object at 0x7f2451ace560>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7f2451ace560>
	pop	eax		
	mov	[ebp-8],	eax	
e2:
	mov	eax,	[ebp-4]			 ; read <arbre_abstrait.VariableDefinitionAssignment object at 0x7f2451ace320>
	push	eax				 ; push <arbre_abstrait.VariableDefinitionAssignment object at 0x7f2451ace320>
	mov	eax,	[ebp+8]			 ; read <arbre_abstrait.Parameter object at 0x7f2451ace7d0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7f2451ace7d0>
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setl	al				 ; met 1 dans al si eax < ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
	pop	eax		
	cmp	eax,	0	
	je	e3		
	mov	eax,	[ebp-8]			 ; read <arbre_abstrait.VariableDefinitionAssignment object at 0x7f2451ace350>
	push	eax				 ; push <arbre_abstrait.VariableDefinitionAssignment object at 0x7f2451ace350>
	mov	eax,	[ebp+12]			 ; read <arbre_abstrait.Parameter object at 0x7f2451ace560>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7f2451ace560>
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
	pop	eax		
	mov	[ebp-8],	eax	
	mov	eax,	[ebp-4]			 ; read <arbre_abstrait.VariableDefinitionAssignment object at 0x7f2451ace320>
	push	eax				 ; push <arbre_abstrait.VariableDefinitionAssignment object at 0x7f2451ace320>
	push	1		
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
	pop	eax		
	mov	[ebp-4],	eax	
	jmp	e2		
e3:
	push	eax		
	mov	eax,	[ebp-8]			 ; read <arbre_abstrait.VariableDefinitionAssignment object at 0x7f2451ace350>
	push	eax				 ; push <arbre_abstrait.VariableDefinitionAssignment object at 0x7f2451ace350>
	pop	eax		
	leave			
	ret			
	leave			
	ret			
main:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	8	
	mov	eax,	sinput	
	call	readline		
	call	atoi		
	push	eax		
	pop	eax		
	mov	[ebp-4],	eax	
	mov	eax,	[ebp-4]			 ; read <arbre_abstrait.VariableDefinitionAssignment object at 0x7f2451acd240>
	push	eax				 ; push <arbre_abstrait.VariableDefinitionAssignment object at 0x7f2451acd240>
	call	_estPair		
	push	eax		
	pop	eax		
	mov	[ebp-8],	eax	
	mov	eax,	[ebp-8]			 ; read <arbre_abstrait.VariableDefinitionAssignment object at 0x7f2451acdd20>
	push	eax				 ; push <arbre_abstrait.VariableDefinitionAssignment object at 0x7f2451acdd20>
	pop	eax		
	cmp	eax,	0	
	je	e4		
	push	2		
	push	3		
	call	_max		
	push	eax		
	pop	eax		
	call	iprintLF		
	jmp	e5		
e4:
	push	3		
	push	4		
	call	_puissance		
	push	eax		
	pop	eax		
	call	iprintLF		
e5:
	push	eax		
	leave			
	ret			
_start:
	call	main		
	mov	eax,	1			 ; 1 est le code de SYS_EXIT
	mov	ebx,	0			 ; 0 est le code de retour correct ici
	int	0x80				 ; exit
