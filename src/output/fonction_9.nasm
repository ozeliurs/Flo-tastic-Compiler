%include	"io.asm"
section	.bss
sinput:	resb	255	;reserve a 255 byte space in memory for the users input string
v$a:	resd	1
section	.text
global _start
_f:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	4	
	push	8		
	pop	eax		
	mov	[ebp-4],	eax	
	mov	eax,	[ebp+8]			 ; read <arbre_abstrait.Parameter object at 0x7f4e196f8bb0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7f4e196f8bb0>
	mov	eax,	[ebp-4]			 ; read <arbre_abstrait.VariableDefinitionAssignment object at 0x7f4e196f8880>
	push	eax				 ; push <arbre_abstrait.VariableDefinitionAssignment object at 0x7f4e196f8880>
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
	push	5		
	call	_f		
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
