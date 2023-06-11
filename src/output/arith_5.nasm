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
		 ; ===== Generating expression Operation(Entier(85), OperationEnum.MULTIPLY, Entier(386)) =====
		 ; ===== Generating operation Operation(Entier(85), OperationEnum.MULTIPLY, Entier(386)) =====
		 ; ===== Generating expression Entier(85) =====
	push	85		
		 ; ===== Finished generating expression Entier(85) =====
		 ; ===== Generating expression Entier(386) =====
	push	386		
		 ; ===== Finished generating expression Entier(386) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(85), OperationEnum.MULTIPLY, Entier(386)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(85)), OperationEnum.MULTIPLY, Entier(386)) =====
		 ; ===== Generating operation Operation(Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(85)), OperationEnum.MULTIPLY, Entier(386)) =====
		 ; ===== Generating expression Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(85)) =====
		 ; ===== Generating operation Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(85)) =====
		 ; ===== Generating expression Entier(-1) =====
	push	-1		
		 ; ===== Finished generating expression Entier(-1) =====
		 ; ===== Generating expression Entier(85) =====
	push	85		
		 ; ===== Finished generating expression Entier(85) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(85)) =====
		 ; ===== Generating expression Entier(386) =====
	push	386		
		 ; ===== Finished generating expression Entier(386) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(85)), OperationEnum.MULTIPLY, Entier(386)) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Entier(85), OperationEnum.MULTIPLY, Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(386))) =====
		 ; ===== Generating operation Operation(Entier(85), OperationEnum.MULTIPLY, Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(386))) =====
		 ; ===== Generating expression Entier(85) =====
	push	85		
		 ; ===== Finished generating expression Entier(85) =====
		 ; ===== Generating expression Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(386)) =====
		 ; ===== Generating operation Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(386)) =====
		 ; ===== Generating expression Entier(-1) =====
	push	-1		
		 ; ===== Finished generating expression Entier(-1) =====
		 ; ===== Generating expression Entier(386) =====
	push	386		
		 ; ===== Finished generating expression Entier(386) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(386)) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(85), OperationEnum.MULTIPLY, Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(386))) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating expression Operation(Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(85)), OperationEnum.MULTIPLY, Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(386))) =====
		 ; ===== Generating operation Operation(Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(85)), OperationEnum.MULTIPLY, Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(386))) =====
		 ; ===== Generating expression Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(85)) =====
		 ; ===== Generating operation Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(85)) =====
		 ; ===== Generating expression Entier(-1) =====
	push	-1		
		 ; ===== Finished generating expression Entier(-1) =====
		 ; ===== Generating expression Entier(85) =====
	push	85		
		 ; ===== Finished generating expression Entier(85) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(85)) =====
		 ; ===== Generating expression Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(386)) =====
		 ; ===== Generating operation Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(386)) =====
		 ; ===== Generating expression Entier(-1) =====
	push	-1		
		 ; ===== Finished generating expression Entier(-1) =====
		 ; ===== Generating expression Entier(386) =====
	push	386		
		 ; ===== Finished generating expression Entier(386) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(386)) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	imul	ebx				 ; effectue l'opération eaxOperationEnum.MULTIPLYebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.MULTIPLY =====
		 ; ===== Finished generating expression Operation(Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(85)), OperationEnum.MULTIPLY, Operation(Entier(-1), OperationEnum.MULTIPLY, Entier(386))) =====
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
