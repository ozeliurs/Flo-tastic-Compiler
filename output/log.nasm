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
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Boolean(False), OperationEnum.NOT, None) =====
		 ; ===== Generating operation Operation(Boolean(False), OperationEnum.NOT, None) =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	eax				 ; dépile la permière operande dans eax
	xor	eax,	1			 ; effectue l'opération non eax et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.NOT =====
		 ; ===== Finished generating expression Operation(Boolean(False), OperationEnum.NOT, None) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Boolean(True), OperationEnum.NOT, None) =====
		 ; ===== Generating operation Operation(Boolean(True), OperationEnum.NOT, None) =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	eax				 ; dépile la permière operande dans eax
	xor	eax,	1			 ; effectue l'opération non eax et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.NOT =====
		 ; ===== Finished generating expression Operation(Boolean(True), OperationEnum.NOT, None) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Boolean(False), OperationEnum.OR, Boolean(False)) =====
		 ; ===== Generating operation Operation(Boolean(False), OperationEnum.OR, Boolean(False)) =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	or	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ORebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.OR =====
		 ; ===== Finished generating expression Operation(Boolean(False), OperationEnum.OR, Boolean(False)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Boolean(False), OperationEnum.OR, Boolean(True)) =====
		 ; ===== Generating operation Operation(Boolean(False), OperationEnum.OR, Boolean(True)) =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	or	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ORebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.OR =====
		 ; ===== Finished generating expression Operation(Boolean(False), OperationEnum.OR, Boolean(True)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Boolean(True), OperationEnum.OR, Boolean(False)) =====
		 ; ===== Generating operation Operation(Boolean(True), OperationEnum.OR, Boolean(False)) =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	or	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ORebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.OR =====
		 ; ===== Finished generating expression Operation(Boolean(True), OperationEnum.OR, Boolean(False)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Boolean(True), OperationEnum.OR, Boolean(True)) =====
		 ; ===== Generating operation Operation(Boolean(True), OperationEnum.OR, Boolean(True)) =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	or	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ORebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.OR =====
		 ; ===== Finished generating expression Operation(Boolean(True), OperationEnum.OR, Boolean(True)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Boolean(False), OperationEnum.AND, Boolean(False)) =====
		 ; ===== Generating operation Operation(Boolean(False), OperationEnum.AND, Boolean(False)) =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	and	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ANDebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.AND =====
		 ; ===== Finished generating expression Operation(Boolean(False), OperationEnum.AND, Boolean(False)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Boolean(False), OperationEnum.AND, Boolean(True)) =====
		 ; ===== Generating operation Operation(Boolean(False), OperationEnum.AND, Boolean(True)) =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	and	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ANDebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.AND =====
		 ; ===== Finished generating expression Operation(Boolean(False), OperationEnum.AND, Boolean(True)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Boolean(True), OperationEnum.AND, Boolean(False)) =====
		 ; ===== Generating operation Operation(Boolean(True), OperationEnum.AND, Boolean(False)) =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	and	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ANDebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.AND =====
		 ; ===== Finished generating expression Operation(Boolean(True), OperationEnum.AND, Boolean(False)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Boolean(True), OperationEnum.AND, Boolean(True)) =====
		 ; ===== Generating operation Operation(Boolean(True), OperationEnum.AND, Boolean(True)) =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	and	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ANDebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.AND =====
		 ; ===== Finished generating expression Operation(Boolean(True), OperationEnum.AND, Boolean(True)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Boolean(False), OperationEnum.AND, Operation(Boolean(False), OperationEnum.NOT, None)) =====
		 ; ===== Generating operation Operation(Boolean(False), OperationEnum.AND, Operation(Boolean(False), OperationEnum.NOT, None)) =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
		 ; ===== Generating expression Operation(Boolean(False), OperationEnum.NOT, None) =====
		 ; ===== Generating operation Operation(Boolean(False), OperationEnum.NOT, None) =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	eax				 ; dépile la permière operande dans eax
	xor	eax,	1			 ; effectue l'opération non eax et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.NOT =====
		 ; ===== Finished generating expression Operation(Boolean(False), OperationEnum.NOT, None) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	and	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ANDebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.AND =====
		 ; ===== Finished generating expression Operation(Boolean(False), OperationEnum.AND, Operation(Boolean(False), OperationEnum.NOT, None)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Boolean(False), OperationEnum.AND, Operation(Boolean(True), OperationEnum.NOT, None)) =====
		 ; ===== Generating operation Operation(Boolean(False), OperationEnum.AND, Operation(Boolean(True), OperationEnum.NOT, None)) =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
		 ; ===== Generating expression Operation(Boolean(True), OperationEnum.NOT, None) =====
		 ; ===== Generating operation Operation(Boolean(True), OperationEnum.NOT, None) =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	eax				 ; dépile la permière operande dans eax
	xor	eax,	1			 ; effectue l'opération non eax et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.NOT =====
		 ; ===== Finished generating expression Operation(Boolean(True), OperationEnum.NOT, None) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	and	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ANDebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.AND =====
		 ; ===== Finished generating expression Operation(Boolean(False), OperationEnum.AND, Operation(Boolean(True), OperationEnum.NOT, None)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Boolean(True), OperationEnum.AND, Operation(Boolean(False), OperationEnum.NOT, None)) =====
		 ; ===== Generating operation Operation(Boolean(True), OperationEnum.AND, Operation(Boolean(False), OperationEnum.NOT, None)) =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
		 ; ===== Generating expression Operation(Boolean(False), OperationEnum.NOT, None) =====
		 ; ===== Generating operation Operation(Boolean(False), OperationEnum.NOT, None) =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	eax				 ; dépile la permière operande dans eax
	xor	eax,	1			 ; effectue l'opération non eax et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.NOT =====
		 ; ===== Finished generating expression Operation(Boolean(False), OperationEnum.NOT, None) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	and	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ANDebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.AND =====
		 ; ===== Finished generating expression Operation(Boolean(True), OperationEnum.AND, Operation(Boolean(False), OperationEnum.NOT, None)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Boolean(True), OperationEnum.AND, Operation(Boolean(True), OperationEnum.NOT, None)) =====
		 ; ===== Generating operation Operation(Boolean(True), OperationEnum.AND, Operation(Boolean(True), OperationEnum.NOT, None)) =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
		 ; ===== Generating expression Operation(Boolean(True), OperationEnum.NOT, None) =====
		 ; ===== Generating operation Operation(Boolean(True), OperationEnum.NOT, None) =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	eax				 ; dépile la permière operande dans eax
	xor	eax,	1			 ; effectue l'opération non eax et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.NOT =====
		 ; ===== Finished generating expression Operation(Boolean(True), OperationEnum.NOT, None) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	and	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ANDebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.AND =====
		 ; ===== Finished generating expression Operation(Boolean(True), OperationEnum.AND, Operation(Boolean(True), OperationEnum.NOT, None)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(Boolean(False), OperationEnum.NOT, None), OperationEnum.AND, Boolean(False)) =====
		 ; ===== Generating operation Operation(Operation(Boolean(False), OperationEnum.NOT, None), OperationEnum.AND, Boolean(False)) =====
		 ; ===== Generating expression Operation(Boolean(False), OperationEnum.NOT, None) =====
		 ; ===== Generating operation Operation(Boolean(False), OperationEnum.NOT, None) =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	eax				 ; dépile la permière operande dans eax
	xor	eax,	1			 ; effectue l'opération non eax et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.NOT =====
		 ; ===== Finished generating expression Operation(Boolean(False), OperationEnum.NOT, None) =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	and	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ANDebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.AND =====
		 ; ===== Finished generating expression Operation(Operation(Boolean(False), OperationEnum.NOT, None), OperationEnum.AND, Boolean(False)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(Boolean(False), OperationEnum.NOT, None), OperationEnum.AND, Boolean(True)) =====
		 ; ===== Generating operation Operation(Operation(Boolean(False), OperationEnum.NOT, None), OperationEnum.AND, Boolean(True)) =====
		 ; ===== Generating expression Operation(Boolean(False), OperationEnum.NOT, None) =====
		 ; ===== Generating operation Operation(Boolean(False), OperationEnum.NOT, None) =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	eax				 ; dépile la permière operande dans eax
	xor	eax,	1			 ; effectue l'opération non eax et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.NOT =====
		 ; ===== Finished generating expression Operation(Boolean(False), OperationEnum.NOT, None) =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	and	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ANDebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.AND =====
		 ; ===== Finished generating expression Operation(Operation(Boolean(False), OperationEnum.NOT, None), OperationEnum.AND, Boolean(True)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(Boolean(True), OperationEnum.NOT, None), OperationEnum.AND, Boolean(False)) =====
		 ; ===== Generating operation Operation(Operation(Boolean(True), OperationEnum.NOT, None), OperationEnum.AND, Boolean(False)) =====
		 ; ===== Generating expression Operation(Boolean(True), OperationEnum.NOT, None) =====
		 ; ===== Generating operation Operation(Boolean(True), OperationEnum.NOT, None) =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	eax				 ; dépile la permière operande dans eax
	xor	eax,	1			 ; effectue l'opération non eax et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.NOT =====
		 ; ===== Finished generating expression Operation(Boolean(True), OperationEnum.NOT, None) =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	and	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ANDebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.AND =====
		 ; ===== Finished generating expression Operation(Operation(Boolean(True), OperationEnum.NOT, None), OperationEnum.AND, Boolean(False)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(Boolean(True), OperationEnum.NOT, None), OperationEnum.AND, Boolean(True)) =====
		 ; ===== Generating operation Operation(Operation(Boolean(True), OperationEnum.NOT, None), OperationEnum.AND, Boolean(True)) =====
		 ; ===== Generating expression Operation(Boolean(True), OperationEnum.NOT, None) =====
		 ; ===== Generating operation Operation(Boolean(True), OperationEnum.NOT, None) =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	eax				 ; dépile la permière operande dans eax
	xor	eax,	1			 ; effectue l'opération non eax et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.NOT =====
		 ; ===== Finished generating expression Operation(Boolean(True), OperationEnum.NOT, None) =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	and	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ANDebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.AND =====
		 ; ===== Finished generating expression Operation(Operation(Boolean(True), OperationEnum.NOT, None), OperationEnum.AND, Boolean(True)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(Boolean(False), OperationEnum.AND, Boolean(False)), OperationEnum.NOT, None) =====
		 ; ===== Generating operation Operation(Operation(Boolean(False), OperationEnum.AND, Boolean(False)), OperationEnum.NOT, None) =====
		 ; ===== Generating expression Operation(Boolean(False), OperationEnum.AND, Boolean(False)) =====
		 ; ===== Generating operation Operation(Boolean(False), OperationEnum.AND, Boolean(False)) =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	and	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ANDebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.AND =====
		 ; ===== Finished generating expression Operation(Boolean(False), OperationEnum.AND, Boolean(False)) =====
	pop	eax				 ; dépile la permière operande dans eax
	xor	eax,	1			 ; effectue l'opération non eax et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.NOT =====
		 ; ===== Finished generating expression Operation(Operation(Boolean(False), OperationEnum.AND, Boolean(False)), OperationEnum.NOT, None) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(Boolean(False), OperationEnum.AND, Boolean(True)), OperationEnum.NOT, None) =====
		 ; ===== Generating operation Operation(Operation(Boolean(False), OperationEnum.AND, Boolean(True)), OperationEnum.NOT, None) =====
		 ; ===== Generating expression Operation(Boolean(False), OperationEnum.AND, Boolean(True)) =====
		 ; ===== Generating operation Operation(Boolean(False), OperationEnum.AND, Boolean(True)) =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	and	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ANDebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.AND =====
		 ; ===== Finished generating expression Operation(Boolean(False), OperationEnum.AND, Boolean(True)) =====
	pop	eax				 ; dépile la permière operande dans eax
	xor	eax,	1			 ; effectue l'opération non eax et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.NOT =====
		 ; ===== Finished generating expression Operation(Operation(Boolean(False), OperationEnum.AND, Boolean(True)), OperationEnum.NOT, None) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(Boolean(True), OperationEnum.AND, Boolean(False)), OperationEnum.NOT, None) =====
		 ; ===== Generating operation Operation(Operation(Boolean(True), OperationEnum.AND, Boolean(False)), OperationEnum.NOT, None) =====
		 ; ===== Generating expression Operation(Boolean(True), OperationEnum.AND, Boolean(False)) =====
		 ; ===== Generating operation Operation(Boolean(True), OperationEnum.AND, Boolean(False)) =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	and	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ANDebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.AND =====
		 ; ===== Finished generating expression Operation(Boolean(True), OperationEnum.AND, Boolean(False)) =====
	pop	eax				 ; dépile la permière operande dans eax
	xor	eax,	1			 ; effectue l'opération non eax et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.NOT =====
		 ; ===== Finished generating expression Operation(Operation(Boolean(True), OperationEnum.AND, Boolean(False)), OperationEnum.NOT, None) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(Boolean(True), OperationEnum.AND, Boolean(True)), OperationEnum.NOT, None) =====
		 ; ===== Generating operation Operation(Operation(Boolean(True), OperationEnum.AND, Boolean(True)), OperationEnum.NOT, None) =====
		 ; ===== Generating expression Operation(Boolean(True), OperationEnum.AND, Boolean(True)) =====
		 ; ===== Generating operation Operation(Boolean(True), OperationEnum.AND, Boolean(True)) =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	and	eax,	ebx			 ; effectue l'opération eaxOperationEnum.ANDebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.AND =====
		 ; ===== Finished generating expression Operation(Boolean(True), OperationEnum.AND, Boolean(True)) =====
	pop	eax				 ; dépile la permière operande dans eax
	xor	eax,	1			 ; effectue l'opération non eax et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.NOT =====
		 ; ===== Finished generating expression Operation(Operation(Boolean(True), OperationEnum.AND, Boolean(True)), OperationEnum.NOT, None) =====
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
