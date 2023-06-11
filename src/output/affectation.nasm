%include	"io.asm"
section	.bss
sinput:	resb	255	;reserve a 255 byte space in memory for the users input string
v$a:	resd	1
section	.text
global _start
main:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	8	
	push	4		
	pop	eax		
	mov	[ebp-4],	eax	
	push	3		
	pop	eax		
	mov	[ebp-8],	eax	
	mov	eax,	[ebp-4]			 ; read <arbre_abstrait.VariableDefinitionAssignment object at 0x7f323bdc8250>
	push	eax				 ; push <arbre_abstrait.VariableDefinitionAssignment object at 0x7f323bdc8250>
	mov	eax,	[ebp-8]			 ; read <arbre_abstrait.VariableDefinitionAssignment object at 0x7f323bdc8280>
	push	eax				 ; push <arbre_abstrait.VariableDefinitionAssignment object at 0x7f323bdc8280>
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
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
