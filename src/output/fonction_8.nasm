%include	"io.asm"
section	.bss
sinput:	resb	255	;reserve a 255 byte space in memory for the users input string
v$a:	resd	1
section	.text
global _start
_double:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	0	
	mov	eax,	[ebp+8]			 ; read <arbre_abstrait.Parameter object at 0x7fd25ff60fa0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7fd25ff60fa0>
	mov	eax,	[ebp+8]			 ; read <arbre_abstrait.Parameter object at 0x7fd25ff60fa0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7fd25ff60fa0>
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
	pop	eax		
	mov	[ebp+8],	eax	
	mov	eax,	[ebp+8]			 ; read <arbre_abstrait.Parameter object at 0x7fd25ff60fa0>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7fd25ff60fa0>
	pop	eax		
	leave			
	ret			
	leave			
	ret			
_quadriple:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	0	
	push	5		
	call	_double		
	push	eax		
	mov	eax,	[ebp+8]			 ; read <arbre_abstrait.Parameter object at 0x7fd25ff61600>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7fd25ff61600>
	call	_double		
	push	eax		
	mov	eax,	[ebp+8]			 ; read <arbre_abstrait.Parameter object at 0x7fd25ff61600>
	push	eax				 ; push <arbre_abstrait.Parameter object at 0x7fd25ff61600>
	call	_double		
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
	push	5		
	call	_double		
	push	eax		
	push	10		
	call	_quadriple		
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
