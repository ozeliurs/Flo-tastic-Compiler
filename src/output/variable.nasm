%include	"io.asm"
section	.bss
sinput:	resb	255	;reserve a 255 byte space in memory for the users input string
v$a:	resd	1
section	.text
global _start
main:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	16	
	push	1		
	pop	eax		
	mov	[ebp-4],	eax	
	push	11		
	pop	eax		
	mov	[ebp-8],	eax	
e0:
	mov	eax,	[ebp-4]			 ; read <arbre_abstrait.VariableDefinitionAssignment object at 0x7f1a738687c0>
	push	eax				 ; push <arbre_abstrait.VariableDefinitionAssignment object at 0x7f1a738687c0>
	mov	eax,	[ebp-8]			 ; read <arbre_abstrait.VariableDefinitionAssignment object at 0x7f1a73868c40>
	push	eax				 ; push <arbre_abstrait.VariableDefinitionAssignment object at 0x7f1a73868c40>
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setl	al				 ; met 1 dans al si eax < ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
	pop	eax		
	cmp	eax,	0	
	je	e1		
	push	2		
	pop	eax		
	mov	[ebp-12],	eax	
	mov	eax,	[ebp-4]			 ; read <arbre_abstrait.VariableDefinitionAssignment object at 0x7f1a738687c0>
	push	eax				 ; push <arbre_abstrait.VariableDefinitionAssignment object at 0x7f1a738687c0>
	pop	eax		
	call	iprintLF		
	mov	eax,	[ebp-4]			 ; read <arbre_abstrait.VariableDefinitionAssignment object at 0x7f1a738687c0>
	push	eax				 ; push <arbre_abstrait.VariableDefinitionAssignment object at 0x7f1a738687c0>
	mov	eax,	[ebp-12]			 ; read <arbre_abstrait.VariableDefinitionAssignment object at 0x7f1a738693f0>
	push	eax				 ; push <arbre_abstrait.VariableDefinitionAssignment object at 0x7f1a738693f0>
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
	pop	eax		
	mov	[ebp-4],	eax	
	jmp	e0		
e1:
	push	eax		
	push	12		
	pop	eax		
	mov	[ebp-4],	eax	
	push	64		
	pop	eax		
	mov	[ebp-8],	eax	
e2:
	mov	eax,	[ebp-4]			 ; read <arbre_abstrait.VariableDefinitionAssignment object at 0x7f1a738687c0>
	push	eax				 ; push <arbre_abstrait.VariableDefinitionAssignment object at 0x7f1a738687c0>
	mov	eax,	[ebp-8]			 ; read <arbre_abstrait.VariableDefinitionAssignment object at 0x7f1a73868c40>
	push	eax				 ; push <arbre_abstrait.VariableDefinitionAssignment object at 0x7f1a73868c40>
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setl	al				 ; met 1 dans al si eax < ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
	pop	eax		
	cmp	eax,	0	
	je	e3		
	push	5		
	pop	eax		
	mov	[ebp-16],	eax	
	mov	eax,	[ebp-4]			 ; read <arbre_abstrait.VariableDefinitionAssignment object at 0x7f1a738687c0>
	push	eax				 ; push <arbre_abstrait.VariableDefinitionAssignment object at 0x7f1a738687c0>
	pop	eax		
	call	iprintLF		
	mov	eax,	[ebp-4]			 ; read <arbre_abstrait.VariableDefinitionAssignment object at 0x7f1a738687c0>
	push	eax				 ; push <arbre_abstrait.VariableDefinitionAssignment object at 0x7f1a738687c0>
	mov	eax,	[ebp-16]			 ; read <arbre_abstrait.VariableDefinitionAssignment object at 0x7f1a73869c30>
	push	eax				 ; push <arbre_abstrait.VariableDefinitionAssignment object at 0x7f1a73869c30>
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
	pop	eax		
	mov	[ebp-4],	eax	
	jmp	e2		
e3:
	push	eax		
	leave			
	ret			
_start:
	call	main		
	mov	eax,	1			 ; 1 est le code de SYS_EXIT
	mov	ebx,	0			 ; 0 est le code de retour correct ici
	int	0x80				 ; exit
