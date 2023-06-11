%include	"io.asm"
section	.bss
sinput:	resb	255	;reserve a 255 byte space in memory for the users input string
v$a:	resd	1
section	.text
global _start
_puissance:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	8	
	push	1		
	pop	eax		
	mov	[ebp-8],	eax	
e0:
	mov	eax,	[ebp-4]			 ; read <arbre_abstrait.VariableDefinition object at 0x7f01248a10c0>
	push	eax				 ; push <arbre_abstrait.VariableDefinition object at 0x7f01248a10c0>
	mov	eax,	[ebp+8]			 ; read <arbre_abstrait.Parameter object at 0x7f01248a14e0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7f01248a14e0>
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setl	al				 ; met 1 dans al si eax < ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
	pop	eax		
	cmp	eax,	0	
	je	e1		
	mov	eax,	[ebp-4]			 ; read <arbre_abstrait.VariableDefinition object at 0x7f01248a10c0>
	push	eax				 ; push <arbre_abstrait.VariableDefinition object at 0x7f01248a10c0>
	push	1		
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
	pop	eax		
	mov	[ebp-4],	eax	
	mov	eax,	[ebp-8]			 ; read <arbre_abstrait.VariableDefinitionAssignment object at 0x7f01248a1120>
	push	eax				 ; push <arbre_abstrait.VariableDefinitionAssignment object at 0x7f01248a1120>
	mov	eax,	[ebp+12]			 ; read <arbre_abstrait.Parameter object at 0x7f01248a1a20>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7f01248a1a20>
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
	pop	eax		
	mov	[ebp-8],	eax	
	jmp	e0		
e1:
	push	eax		
	mov	eax,	[ebp-8]			 ; read <arbre_abstrait.VariableDefinitionAssignment object at 0x7f01248a1120>
	push	eax				 ; push <arbre_abstrait.VariableDefinitionAssignment object at 0x7f01248a1120>
	pop	eax		
	leave			
	ret			
	leave			
	ret			
main:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	0	
	push	2		
	push	3		
	call	_puissance		
	push	eax		
	pop	eax		
	call	iprintLF		
	push	3		
	push	4		
	call	_puissance		
	push	eax		
	pop	eax		
	call	iprintLF		
	push	4		
	push	5		
	call	_puissance		
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
