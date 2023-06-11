%include	"io.asm"
section	.bss
sinput:	resb	255	;reserve a 255 byte space in memory for the users input string
v$a:	resd	1
section	.text
global _start
		 ; ===== Generating function declarations =====
		 ; ===== End of function declarations =====
		 ; ===== Generating main function =====
main:
	push	ebp		
	mov	ebp,	esp	
	sub	esp,	0	
		 ; ===== Generating expression Operation(Entier(1), OperationEnum.LESS_THAN, Entier(2)) =====
		 ; ===== Generating operation Operation(Entier(1), OperationEnum.LESS_THAN, Entier(2)) =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setl	al				 ; met 1 dans al si eax < ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.LESS_THAN =====
		 ; ===== Finished generating expression Operation(Entier(1), OperationEnum.LESS_THAN, Entier(2)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Entier(2), OperationEnum.LESS_THAN, Entier(2)) =====
		 ; ===== Generating operation Operation(Entier(2), OperationEnum.LESS_THAN, Entier(2)) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setl	al				 ; met 1 dans al si eax < ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.LESS_THAN =====
		 ; ===== Finished generating expression Operation(Entier(2), OperationEnum.LESS_THAN, Entier(2)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Entier(3), OperationEnum.LESS_THAN, Entier(2)) =====
		 ; ===== Generating operation Operation(Entier(3), OperationEnum.LESS_THAN, Entier(2)) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setl	al				 ; met 1 dans al si eax < ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.LESS_THAN =====
		 ; ===== Finished generating expression Operation(Entier(3), OperationEnum.LESS_THAN, Entier(2)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Entier(1), OperationEnum.LESS_THAN_OR_EQUAL, Entier(2)) =====
		 ; ===== Generating operation Operation(Entier(1), OperationEnum.LESS_THAN_OR_EQUAL, Entier(2)) =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setle	al				 ; met 1 dans al si eax <= ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.LESS_THAN_OR_EQUAL =====
		 ; ===== Finished generating expression Operation(Entier(1), OperationEnum.LESS_THAN_OR_EQUAL, Entier(2)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Entier(2), OperationEnum.LESS_THAN_OR_EQUAL, Entier(2)) =====
		 ; ===== Generating operation Operation(Entier(2), OperationEnum.LESS_THAN_OR_EQUAL, Entier(2)) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setle	al				 ; met 1 dans al si eax <= ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.LESS_THAN_OR_EQUAL =====
		 ; ===== Finished generating expression Operation(Entier(2), OperationEnum.LESS_THAN_OR_EQUAL, Entier(2)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Entier(3), OperationEnum.LESS_THAN_OR_EQUAL, Entier(2)) =====
		 ; ===== Generating operation Operation(Entier(3), OperationEnum.LESS_THAN_OR_EQUAL, Entier(2)) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setle	al				 ; met 1 dans al si eax <= ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.LESS_THAN_OR_EQUAL =====
		 ; ===== Finished generating expression Operation(Entier(3), OperationEnum.LESS_THAN_OR_EQUAL, Entier(2)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Entier(1), OperationEnum.GREATER_THAN, Entier(2)) =====
		 ; ===== Generating operation Operation(Entier(1), OperationEnum.GREATER_THAN, Entier(2)) =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setg	al				 ; met 1 dans al si eax > ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.GREATER_THAN =====
		 ; ===== Finished generating expression Operation(Entier(1), OperationEnum.GREATER_THAN, Entier(2)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Entier(2), OperationEnum.GREATER_THAN, Entier(2)) =====
		 ; ===== Generating operation Operation(Entier(2), OperationEnum.GREATER_THAN, Entier(2)) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setg	al				 ; met 1 dans al si eax > ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.GREATER_THAN =====
		 ; ===== Finished generating expression Operation(Entier(2), OperationEnum.GREATER_THAN, Entier(2)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Entier(3), OperationEnum.GREATER_THAN, Entier(2)) =====
		 ; ===== Generating operation Operation(Entier(3), OperationEnum.GREATER_THAN, Entier(2)) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setg	al				 ; met 1 dans al si eax > ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.GREATER_THAN =====
		 ; ===== Finished generating expression Operation(Entier(3), OperationEnum.GREATER_THAN, Entier(2)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Entier(1), OperationEnum.GREATER_THAN_OR_EQUAL, Entier(2)) =====
		 ; ===== Generating operation Operation(Entier(1), OperationEnum.GREATER_THAN_OR_EQUAL, Entier(2)) =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setge	al				 ; met 1 dans al si eax >= ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.GREATER_THAN_OR_EQUAL =====
		 ; ===== Finished generating expression Operation(Entier(1), OperationEnum.GREATER_THAN_OR_EQUAL, Entier(2)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Entier(2), OperationEnum.GREATER_THAN_OR_EQUAL, Entier(2)) =====
		 ; ===== Generating operation Operation(Entier(2), OperationEnum.GREATER_THAN_OR_EQUAL, Entier(2)) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setge	al				 ; met 1 dans al si eax >= ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.GREATER_THAN_OR_EQUAL =====
		 ; ===== Finished generating expression Operation(Entier(2), OperationEnum.GREATER_THAN_OR_EQUAL, Entier(2)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Entier(3), OperationEnum.GREATER_THAN_OR_EQUAL, Entier(2)) =====
		 ; ===== Generating operation Operation(Entier(3), OperationEnum.GREATER_THAN_OR_EQUAL, Entier(2)) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setge	al				 ; met 1 dans al si eax >= ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.GREATER_THAN_OR_EQUAL =====
		 ; ===== Finished generating expression Operation(Entier(3), OperationEnum.GREATER_THAN_OR_EQUAL, Entier(2)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2)) =====
		 ; ===== Generating operation Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2)) =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setne	al				 ; met 1 dans al si eax != ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.INEQUALITY =====
		 ; ===== Finished generating expression Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Entier(2), OperationEnum.INEQUALITY, Entier(2)) =====
		 ; ===== Generating operation Operation(Entier(2), OperationEnum.INEQUALITY, Entier(2)) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setne	al				 ; met 1 dans al si eax != ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.INEQUALITY =====
		 ; ===== Finished generating expression Operation(Entier(2), OperationEnum.INEQUALITY, Entier(2)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Entier(3), OperationEnum.INEQUALITY, Entier(2)) =====
		 ; ===== Generating operation Operation(Entier(3), OperationEnum.INEQUALITY, Entier(2)) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setne	al				 ; met 1 dans al si eax != ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.INEQUALITY =====
		 ; ===== Finished generating expression Operation(Entier(3), OperationEnum.INEQUALITY, Entier(2)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Entier(1), OperationEnum.EQUALITY, Entier(2)) =====
		 ; ===== Generating operation Operation(Entier(1), OperationEnum.EQUALITY, Entier(2)) =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	sete	al				 ; met 1 dans al si eax == ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.EQUALITY =====
		 ; ===== Finished generating expression Operation(Entier(1), OperationEnum.EQUALITY, Entier(2)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Entier(2), OperationEnum.EQUALITY, Entier(2)) =====
		 ; ===== Generating operation Operation(Entier(2), OperationEnum.EQUALITY, Entier(2)) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	sete	al				 ; met 1 dans al si eax == ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.EQUALITY =====
		 ; ===== Finished generating expression Operation(Entier(2), OperationEnum.EQUALITY, Entier(2)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Entier(3), OperationEnum.EQUALITY, Entier(2)) =====
		 ; ===== Generating operation Operation(Entier(3), OperationEnum.EQUALITY, Entier(2)) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	sete	al				 ; met 1 dans al si eax == ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.EQUALITY =====
		 ; ===== Finished generating expression Operation(Entier(3), OperationEnum.EQUALITY, Entier(2)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(Entier(1), OperationEnum.LESS_THAN, Entier(2)), OperationEnum.AND, Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2))) =====
		 ; ===== Generating operation Operation(Operation(Entier(1), OperationEnum.LESS_THAN, Entier(2)), OperationEnum.AND, Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2))) =====
		 ; ===== Generating expression Operation(Entier(1), OperationEnum.LESS_THAN, Entier(2)) =====
		 ; ===== Generating operation Operation(Entier(1), OperationEnum.LESS_THAN, Entier(2)) =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setl	al				 ; met 1 dans al si eax < ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.LESS_THAN =====
		 ; ===== Finished generating expression Operation(Entier(1), OperationEnum.LESS_THAN, Entier(2)) =====
		 ; ===== Generating expression Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2)) =====
		 ; ===== Generating operation Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2)) =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setne	al				 ; met 1 dans al si eax != ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.INEQUALITY =====
		 ; ===== Finished generating expression Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2)) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	and	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ANDebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.AND =====
		 ; ===== Finished generating expression Operation(Operation(Entier(1), OperationEnum.LESS_THAN, Entier(2)), OperationEnum.AND, Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2))) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(Entier(1), OperationEnum.LESS_THAN, Entier(2)), OperationEnum.AND, Operation(Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2)), OperationEnum.NOT, None)) =====
		 ; ===== Generating operation Operation(Operation(Entier(1), OperationEnum.LESS_THAN, Entier(2)), OperationEnum.AND, Operation(Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2)), OperationEnum.NOT, None)) =====
		 ; ===== Generating expression Operation(Entier(1), OperationEnum.LESS_THAN, Entier(2)) =====
		 ; ===== Generating operation Operation(Entier(1), OperationEnum.LESS_THAN, Entier(2)) =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setl	al				 ; met 1 dans al si eax < ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.LESS_THAN =====
		 ; ===== Finished generating expression Operation(Entier(1), OperationEnum.LESS_THAN, Entier(2)) =====
		 ; ===== Generating expression Operation(Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2)), OperationEnum.NOT, None) =====
		 ; ===== Generating operation Operation(Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2)), OperationEnum.NOT, None) =====
		 ; ===== Generating expression Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2)) =====
		 ; ===== Generating operation Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2)) =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setne	al				 ; met 1 dans al si eax != ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.INEQUALITY =====
		 ; ===== Finished generating expression Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2)) =====
	pop	eax				 ; dépile la permière operande dans eax
	xor	eax,	1			 ; effectue l'opération non eax et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.NOT =====
		 ; ===== Finished generating expression Operation(Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2)), OperationEnum.NOT, None) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	and	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ANDebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.AND =====
		 ; ===== Finished generating expression Operation(Operation(Entier(1), OperationEnum.LESS_THAN, Entier(2)), OperationEnum.AND, Operation(Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2)), OperationEnum.NOT, None)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2)), OperationEnum.AND, Operation(Entier(2), OperationEnum.LESS_THAN_OR_EQUAL, Entier(2))), OperationEnum.AND, Operation(Operation(Entier(2), OperationEnum.EQUALITY, Entier(3)), OperationEnum.NOT, None)) =====
		 ; ===== Generating operation Operation(Operation(Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2)), OperationEnum.AND, Operation(Entier(2), OperationEnum.LESS_THAN_OR_EQUAL, Entier(2))), OperationEnum.AND, Operation(Operation(Entier(2), OperationEnum.EQUALITY, Entier(3)), OperationEnum.NOT, None)) =====
		 ; ===== Generating expression Operation(Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2)), OperationEnum.AND, Operation(Entier(2), OperationEnum.LESS_THAN_OR_EQUAL, Entier(2))) =====
		 ; ===== Generating operation Operation(Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2)), OperationEnum.AND, Operation(Entier(2), OperationEnum.LESS_THAN_OR_EQUAL, Entier(2))) =====
		 ; ===== Generating expression Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2)) =====
		 ; ===== Generating operation Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2)) =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setne	al				 ; met 1 dans al si eax != ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.INEQUALITY =====
		 ; ===== Finished generating expression Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2)) =====
		 ; ===== Generating expression Operation(Entier(2), OperationEnum.LESS_THAN_OR_EQUAL, Entier(2)) =====
		 ; ===== Generating operation Operation(Entier(2), OperationEnum.LESS_THAN_OR_EQUAL, Entier(2)) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setle	al				 ; met 1 dans al si eax <= ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.LESS_THAN_OR_EQUAL =====
		 ; ===== Finished generating expression Operation(Entier(2), OperationEnum.LESS_THAN_OR_EQUAL, Entier(2)) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	and	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ANDebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.AND =====
		 ; ===== Finished generating expression Operation(Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2)), OperationEnum.AND, Operation(Entier(2), OperationEnum.LESS_THAN_OR_EQUAL, Entier(2))) =====
		 ; ===== Generating expression Operation(Operation(Entier(2), OperationEnum.EQUALITY, Entier(3)), OperationEnum.NOT, None) =====
		 ; ===== Generating operation Operation(Operation(Entier(2), OperationEnum.EQUALITY, Entier(3)), OperationEnum.NOT, None) =====
		 ; ===== Generating expression Operation(Entier(2), OperationEnum.EQUALITY, Entier(3)) =====
		 ; ===== Generating operation Operation(Entier(2), OperationEnum.EQUALITY, Entier(3)) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	sete	al				 ; met 1 dans al si eax == ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.EQUALITY =====
		 ; ===== Finished generating expression Operation(Entier(2), OperationEnum.EQUALITY, Entier(3)) =====
	pop	eax				 ; dépile la permière operande dans eax
	xor	eax,	1			 ; effectue l'opération non eax et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.NOT =====
		 ; ===== Finished generating expression Operation(Operation(Entier(2), OperationEnum.EQUALITY, Entier(3)), OperationEnum.NOT, None) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	and	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ANDebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.AND =====
		 ; ===== Finished generating expression Operation(Operation(Operation(Entier(1), OperationEnum.INEQUALITY, Entier(2)), OperationEnum.AND, Operation(Entier(2), OperationEnum.LESS_THAN_OR_EQUAL, Entier(2))), OperationEnum.AND, Operation(Operation(Entier(2), OperationEnum.EQUALITY, Entier(3)), OperationEnum.NOT, None)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(Operation(Operation(Operation(Entier(28), OperationEnum.MULTIPLY, Entier(10)), OperationEnum.DIVIDE, Operation(Entier(120), OperationEnum.PLUS, Entier(20))), OperationEnum.LESS_THAN, Operation(Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.PLUS, Entier(57)), OperationEnum.MINUS, Entier(24))), OperationEnum.AND, Operation(Operation(Entier(75), OperationEnum.EQUALITY, Entier(47)), OperationEnum.NOT, None)), OperationEnum.AND, Operation(Entier(1), OperationEnum.LESS_THAN, Entier(2))) =====
		 ; ===== Generating operation Operation(Operation(Operation(Operation(Operation(Entier(28), OperationEnum.MULTIPLY, Entier(10)), OperationEnum.DIVIDE, Operation(Entier(120), OperationEnum.PLUS, Entier(20))), OperationEnum.LESS_THAN, Operation(Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.PLUS, Entier(57)), OperationEnum.MINUS, Entier(24))), OperationEnum.AND, Operation(Operation(Entier(75), OperationEnum.EQUALITY, Entier(47)), OperationEnum.NOT, None)), OperationEnum.AND, Operation(Entier(1), OperationEnum.LESS_THAN, Entier(2))) =====
		 ; ===== Generating expression Operation(Operation(Operation(Operation(Entier(28), OperationEnum.MULTIPLY, Entier(10)), OperationEnum.DIVIDE, Operation(Entier(120), OperationEnum.PLUS, Entier(20))), OperationEnum.LESS_THAN, Operation(Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.PLUS, Entier(57)), OperationEnum.MINUS, Entier(24))), OperationEnum.AND, Operation(Operation(Entier(75), OperationEnum.EQUALITY, Entier(47)), OperationEnum.NOT, None)) =====
		 ; ===== Generating operation Operation(Operation(Operation(Operation(Entier(28), OperationEnum.MULTIPLY, Entier(10)), OperationEnum.DIVIDE, Operation(Entier(120), OperationEnum.PLUS, Entier(20))), OperationEnum.LESS_THAN, Operation(Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.PLUS, Entier(57)), OperationEnum.MINUS, Entier(24))), OperationEnum.AND, Operation(Operation(Entier(75), OperationEnum.EQUALITY, Entier(47)), OperationEnum.NOT, None)) =====
		 ; ===== Generating expression Operation(Operation(Operation(Entier(28), OperationEnum.MULTIPLY, Entier(10)), OperationEnum.DIVIDE, Operation(Entier(120), OperationEnum.PLUS, Entier(20))), OperationEnum.LESS_THAN, Operation(Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.PLUS, Entier(57)), OperationEnum.MINUS, Entier(24))) =====
		 ; ===== Generating operation Operation(Operation(Operation(Entier(28), OperationEnum.MULTIPLY, Entier(10)), OperationEnum.DIVIDE, Operation(Entier(120), OperationEnum.PLUS, Entier(20))), OperationEnum.LESS_THAN, Operation(Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.PLUS, Entier(57)), OperationEnum.MINUS, Entier(24))) =====
		 ; ===== Generating expression Operation(Operation(Entier(28), OperationEnum.MULTIPLY, Entier(10)), OperationEnum.DIVIDE, Operation(Entier(120), OperationEnum.PLUS, Entier(20))) =====
		 ; ===== Generating operation Operation(Operation(Entier(28), OperationEnum.MULTIPLY, Entier(10)), OperationEnum.DIVIDE, Operation(Entier(120), OperationEnum.PLUS, Entier(20))) =====
		 ; ===== Generating expression Operation(Entier(28), OperationEnum.MULTIPLY, Entier(10)) =====
		 ; ===== Generating operation Operation(Entier(28), OperationEnum.MULTIPLY, Entier(10)) =====
		 ; ===== Generating expression Entier(28) =====
	push	28		
		 ; ===== Finished generating expression Entier(28) =====
		 ; ===== Generating expression Entier(10) =====
	push	10		
		 ; ===== Finished generating expression Entier(10) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(28), OperationEnum.MULTIPLY, Entier(10)) =====
		 ; ===== Generating expression Operation(Entier(120), OperationEnum.PLUS, Entier(20)) =====
		 ; ===== Generating operation Operation(Entier(120), OperationEnum.PLUS, Entier(20)) =====
		 ; ===== Generating expression Entier(120) =====
	push	120		
		 ; ===== Finished generating expression Entier(120) =====
		 ; ===== Generating expression Entier(20) =====
	push	20		
		 ; ===== Finished generating expression Entier(20) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(Entier(120), OperationEnum.PLUS, Entier(20)) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	mov	edx,	0			 ; met 0 dans edx pour la division
	idiv	ebx				 ; effectue l'opération eaxOperationEnum.DIVIDEebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.DIVIDE =====
		 ; ===== Finished generating expression Operation(Operation(Entier(28), OperationEnum.MULTIPLY, Entier(10)), OperationEnum.DIVIDE, Operation(Entier(120), OperationEnum.PLUS, Entier(20))) =====
		 ; ===== Generating expression Operation(Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.PLUS, Entier(57)), OperationEnum.MINUS, Entier(24)) =====
		 ; ===== Generating operation Operation(Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.PLUS, Entier(57)), OperationEnum.MINUS, Entier(24)) =====
		 ; ===== Generating expression Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.PLUS, Entier(57)) =====
		 ; ===== Generating operation Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.PLUS, Entier(57)) =====
		 ; ===== Generating expression Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)) =====
		 ; ===== Generating operation Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)) =====
		 ; ===== Generating expression Entier(57) =====
	push	57		
		 ; ===== Finished generating expression Entier(57) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.PLUS, Entier(57)) =====
		 ; ===== Generating expression Entier(24) =====
	push	24		
		 ; ===== Finished generating expression Entier(24) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	sub	eax,	ebx			 ; effectue l'opération eaxOperationEnum.MINUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MINUS =====
		 ; ===== Finished generating expression Operation(Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.PLUS, Entier(57)), OperationEnum.MINUS, Entier(24)) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setl	al				 ; met 1 dans al si eax < ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.LESS_THAN =====
		 ; ===== Finished generating expression Operation(Operation(Operation(Entier(28), OperationEnum.MULTIPLY, Entier(10)), OperationEnum.DIVIDE, Operation(Entier(120), OperationEnum.PLUS, Entier(20))), OperationEnum.LESS_THAN, Operation(Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.PLUS, Entier(57)), OperationEnum.MINUS, Entier(24))) =====
		 ; ===== Generating expression Operation(Operation(Entier(75), OperationEnum.EQUALITY, Entier(47)), OperationEnum.NOT, None) =====
		 ; ===== Generating operation Operation(Operation(Entier(75), OperationEnum.EQUALITY, Entier(47)), OperationEnum.NOT, None) =====
		 ; ===== Generating expression Operation(Entier(75), OperationEnum.EQUALITY, Entier(47)) =====
		 ; ===== Generating operation Operation(Entier(75), OperationEnum.EQUALITY, Entier(47)) =====
		 ; ===== Generating expression Entier(75) =====
	push	75		
		 ; ===== Finished generating expression Entier(75) =====
		 ; ===== Generating expression Entier(47) =====
	push	47		
		 ; ===== Finished generating expression Entier(47) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	sete	al				 ; met 1 dans al si eax == ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.EQUALITY =====
		 ; ===== Finished generating expression Operation(Entier(75), OperationEnum.EQUALITY, Entier(47)) =====
	pop	eax				 ; dépile la permière operande dans eax
	xor	eax,	1			 ; effectue l'opération non eax et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.NOT =====
		 ; ===== Finished generating expression Operation(Operation(Entier(75), OperationEnum.EQUALITY, Entier(47)), OperationEnum.NOT, None) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	and	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ANDebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.AND =====
		 ; ===== Finished generating expression Operation(Operation(Operation(Operation(Entier(28), OperationEnum.MULTIPLY, Entier(10)), OperationEnum.DIVIDE, Operation(Entier(120), OperationEnum.PLUS, Entier(20))), OperationEnum.LESS_THAN, Operation(Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.PLUS, Entier(57)), OperationEnum.MINUS, Entier(24))), OperationEnum.AND, Operation(Operation(Entier(75), OperationEnum.EQUALITY, Entier(47)), OperationEnum.NOT, None)) =====
		 ; ===== Generating expression Operation(Entier(1), OperationEnum.LESS_THAN, Entier(2)) =====
		 ; ===== Generating operation Operation(Entier(1), OperationEnum.LESS_THAN, Entier(2)) =====
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setl	al				 ; met 1 dans al si eax < ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.LESS_THAN =====
		 ; ===== Finished generating expression Operation(Entier(1), OperationEnum.LESS_THAN, Entier(2)) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	and	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ANDebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.AND =====
		 ; ===== Finished generating expression Operation(Operation(Operation(Operation(Operation(Entier(28), OperationEnum.MULTIPLY, Entier(10)), OperationEnum.DIVIDE, Operation(Entier(120), OperationEnum.PLUS, Entier(20))), OperationEnum.LESS_THAN, Operation(Operation(Operation(Entier(2), OperationEnum.MULTIPLY, Entier(3)), OperationEnum.PLUS, Entier(57)), OperationEnum.MINUS, Entier(24))), OperationEnum.AND, Operation(Operation(Entier(75), OperationEnum.EQUALITY, Entier(47)), OperationEnum.NOT, None)), OperationEnum.AND, Operation(Entier(1), OperationEnum.LESS_THAN, Entier(2))) =====
	pop	eax		
	call	iprintLF		
	leave			
	ret			
		 ; ===== End of main function =====
_start:
	call	main		
	mov	eax,	1			 ; 1 est le code de SYS_EXIT
	mov	ebx,	0			 ; 0 est le code de retour correct ici
	int	0x80				 ; exit
