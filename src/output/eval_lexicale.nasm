%include	"io.asm"
section	.bss
sinput:	resb	255	;reserve a 255 byte space in memory for the users input string
v$a:	resd	1
section	.text
global _start
_max:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	4	
	push	0		
	pop	eax		
	mov	[ebp-4],	eax	
	mov	eax,	[ebp+16]			 ; read <arbre_abstrait.Parameter object at 0x7f64205ba1d0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7f64205ba1d0>
	mov	eax,	[ebp+12]			 ; read <arbre_abstrait.Parameter object at 0x7f64205ba2c0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7f64205ba2c0>
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setge	al				 ; met 1 dans al si eax >= ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
	mov	eax,	[ebp+16]			 ; read <arbre_abstrait.Parameter object at 0x7f64205ba1d0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7f64205ba1d0>
	mov	eax,	[ebp+8]			 ; read <arbre_abstrait.Parameter object at 0x7f64205ba4d0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7f64205ba4d0>
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setg	al				 ; met 1 dans al si eax > ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	and	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ANDebx et met le résultat dans eax
	push	eax				 ; empile le résultat
	pop	eax		
	cmp	eax,	0	
	je	e0		
	mov	eax,	[ebp+16]			 ; read <arbre_abstrait.Parameter object at 0x7f64205ba1d0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7f64205ba1d0>
	pop	eax		
	mov	[ebp-4],	eax	
	jmp	e1		
e0:
	mov	eax,	[ebp+16]			 ; read <arbre_abstrait.Parameter object at 0x7f64205ba1d0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7f64205ba1d0>
	mov	eax,	[ebp+8]			 ; read <arbre_abstrait.Parameter object at 0x7f64205ba4d0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7f64205ba4d0>
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setl	al				 ; met 1 dans al si eax < ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
	pop	eax				 ; dépile la permière operande dans eax
	xor	eax,	1			 ; effectue l'opération non eax et met le résultat dans eax
	push	eax				 ; empile le résultat
	pop	eax		
	cmp	eax,	0	
	je	e2		
	mov	eax,	[ebp+12]			 ; read <arbre_abstrait.Parameter object at 0x7f64205ba2c0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7f64205ba2c0>
	pop	eax		
	mov	[ebp-4],	eax	
	jmp	e3		
e2:
	mov	eax,	[ebp+12]			 ; read <arbre_abstrait.Parameter object at 0x7f64205ba2c0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7f64205ba2c0>
	mov	eax,	[ebp+16]			 ; read <arbre_abstrait.Parameter object at 0x7f64205ba1d0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7f64205ba1d0>
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setle	al				 ; met 1 dans al si eax <= ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
	pop	eax		
	cmp	eax,	0	
	je	e4		
	mov	eax,	[ebp+8]			 ; read <arbre_abstrait.Parameter object at 0x7f64205ba4d0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7f64205ba4d0>
	pop	eax		
	mov	[ebp-4],	eax	
	jmp	e5		
e4:
	mov	eax,	[ebp+12]			 ; read <arbre_abstrait.Parameter object at 0x7f64205ba2c0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7f64205ba2c0>
	pop	eax		
	mov	[ebp-4],	eax	
e5:
	push	eax		
e3:
	push	eax		
e1:
	push	eax		
	mov	eax,	[ebp-4]			 ; read <arbre_abstrait.VariableDefinitionAssignment object at 0x7f64205b9de0>
	push	eax				 ; push <arbre_abstrait.VariableDefinitionAssignment object at 0x7f64205b9de0>
	pop	eax		
	leave			
	ret			
	leave			
	ret			
main:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	8	
	push	1		
	pop	eax		
	mov	[ebp-4],	eax	
e6:
	mov	eax,	[ebp-4]			 ; read <arbre_abstrait.VariableDefinitionAssignment object at 0x7f64205b9ae0>
	push	eax				 ; push <arbre_abstrait.VariableDefinitionAssignment object at 0x7f64205b9ae0>
	pop	eax		
	cmp	eax,	0	
	je	e7		
	mov	eax,	sinput	
	call	readline		
	call	atoi		
	push	eax		
	push	5		
	push	12		
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	sub	eax,	ebx			 ; effectue l'opération eaxOperationEnum.MINUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
	push	23		
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
	push	47		
	push	13		
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	mov	edx,	0			 ; met 0 dans edx pour la division
	idiv	ebx				 ; effectue l'opération eaxOperationEnum.DIVIDEebx et met le résultat dans eax
	push	eax				 ; empile le résultat
	push	6		
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
	call	_max		
	push	eax		
	pop	eax		
	mov	[ebp-8],	eax	
	mov	eax,	[ebp-8]			 ; read <arbre_abstrait.VariableDefinitionAssignment object at 0x7f64205bace0>
	push	eax				 ; push <arbre_abstrait.VariableDefinitionAssignment object at 0x7f64205bace0>
	push	10		
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	mov	edx,	0			 ; met 0 dans edx pour la division
	idiv	ebx				 ; effectue l'opération eaxOperationEnum.MODULOebx et met le reste dans edx
	mov	eax,	edx			 ; met le reste dans eax
	push	eax				 ; empile le résultat
	push	0		
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setne	al				 ; met 1 dans al si eax != ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
	pop	eax		
	cmp	eax,	0	
	je	e8		
	mov	eax,	[ebp-8]			 ; read <arbre_abstrait.VariableDefinitionAssignment object at 0x7f64205bace0>
	push	eax				 ; push <arbre_abstrait.VariableDefinitionAssignment object at 0x7f64205bace0>
	pop	eax		
	call	iprintLF		
	push	0		
	pop	eax		
	mov	[ebp-4],	eax	
	jmp	e9		
e8:
e9:
	push	eax		
	jmp	e6		
e7:
	push	eax		
	leave			
	ret			
_start:
	call	main		
	mov	eax,	1			 ; 1 est le code de SYS_EXIT
	mov	ebx,	0			 ; 0 est le code de retour correct ici
	int	0x80				 ; exit
