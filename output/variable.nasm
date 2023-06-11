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
	sub	esp,	16	
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
	pop	eax		
	mov	[ebp-4],	eax	
		 ; ===== Generating expression Entier(11) =====
	push	11		
		 ; ===== Finished generating expression Entier(11) =====
	pop	eax		
	mov	[ebp-8],	eax	
		 ; ===== Generating while loop =====
e0:
		 ; ===== Generating expression Operation(VariableRead(a, entier), OperationEnum.LESS_THAN, VariableRead(b, entier)) =====
		 ; ===== Generating operation Operation(VariableRead(a, entier), OperationEnum.LESS_THAN, VariableRead(b, entier)) =====
		 ; ===== Generating expression VariableRead(a, entier) =====
		 ; ===== Generating variable read VariableDefinitionAssignment(entier, a, Entier(1), -4) =====
	mov	eax,	[ebp-4]			 ; read VariableDefinitionAssignment(entier, a, Entier(1), -4)
	push	eax				 ; push VariableDefinitionAssignment(entier, a, Entier(1), -4) on stack
		 ; ===== Finished generating variable read VariableDefinitionAssignment(entier, a, Entier(1), -4) =====
		 ; ===== Finished generating expression VariableRead(a, entier) =====
		 ; ===== Generating expression VariableRead(b, entier) =====
		 ; ===== Generating variable read VariableDefinitionAssignment(entier, b, Entier(11), -8) =====
	mov	eax,	[ebp-8]			 ; read VariableDefinitionAssignment(entier, b, Entier(11), -8)
	push	eax				 ; push VariableDefinitionAssignment(entier, b, Entier(11), -8) on stack
		 ; ===== Finished generating variable read VariableDefinitionAssignment(entier, b, Entier(11), -8) =====
		 ; ===== Finished generating expression VariableRead(b, entier) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setl	al				 ; met 1 dans al si eax < ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.LESS_THAN =====
		 ; ===== Finished generating expression Operation(VariableRead(a, entier), OperationEnum.LESS_THAN, VariableRead(b, entier)) =====
	pop	eax		
	cmp	eax,	0	
	je	e1		
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	eax		
	mov	[ebp-12],	eax	
		 ; ===== Generating expression VariableRead(a, entier) =====
		 ; ===== Generating variable read VariableDefinitionAssignment(entier, a, Entier(1), -4) =====
	mov	eax,	[ebp-4]			 ; read VariableDefinitionAssignment(entier, a, Entier(1), -4)
	push	eax				 ; push VariableDefinitionAssignment(entier, a, Entier(1), -4) on stack
		 ; ===== Finished generating variable read VariableDefinitionAssignment(entier, a, Entier(1), -4) =====
		 ; ===== Finished generating expression VariableRead(a, entier) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating variable assignment VariableDefinitionAssignment(entier, a, Entier(1), -4) =====
		 ; ===== Generating expression Operation(VariableRead(a, entier), OperationEnum.PLUS, VariableRead(c, entier)) =====
		 ; ===== Generating operation Operation(VariableRead(a, entier), OperationEnum.PLUS, VariableRead(c, entier)) =====
		 ; ===== Generating expression VariableRead(a, entier) =====
		 ; ===== Generating variable read VariableDefinitionAssignment(entier, a, Entier(1), -4) =====
	mov	eax,	[ebp-4]			 ; read VariableDefinitionAssignment(entier, a, Entier(1), -4)
	push	eax				 ; push VariableDefinitionAssignment(entier, a, Entier(1), -4) on stack
		 ; ===== Finished generating variable read VariableDefinitionAssignment(entier, a, Entier(1), -4) =====
		 ; ===== Finished generating expression VariableRead(a, entier) =====
		 ; ===== Generating expression VariableRead(c, entier) =====
		 ; ===== Generating variable read VariableDefinitionAssignment(entier, c, Entier(2), -12) =====
	mov	eax,	[ebp-12]			 ; read VariableDefinitionAssignment(entier, c, Entier(2), -12)
	push	eax				 ; push VariableDefinitionAssignment(entier, c, Entier(2), -12) on stack
		 ; ===== Finished generating variable read VariableDefinitionAssignment(entier, c, Entier(2), -12) =====
		 ; ===== Finished generating expression VariableRead(c, entier) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(VariableRead(a, entier), OperationEnum.PLUS, VariableRead(c, entier)) =====
	pop	eax				 ; pop value from stack
	mov	[ebp-4],	eax			 ; assign value to variable
		 ; ===== Finished generating variable assignment VariableDefinitionAssignment(entier, a, Entier(1), -4) =====
	jmp	e0		
e1:
	push	eax		
		 ; ===== Finished generating while loop =====
		 ; ===== Generating variable assignment VariableDefinitionAssignment(entier, a, Entier(1), -4) =====
		 ; ===== Generating expression Entier(12) =====
	push	12		
		 ; ===== Finished generating expression Entier(12) =====
	pop	eax				 ; pop value from stack
	mov	[ebp-4],	eax			 ; assign value to variable
		 ; ===== Finished generating variable assignment VariableDefinitionAssignment(entier, a, Entier(1), -4) =====
		 ; ===== Generating variable assignment VariableDefinitionAssignment(entier, b, Entier(11), -8) =====
		 ; ===== Generating expression Entier(64) =====
	push	64		
		 ; ===== Finished generating expression Entier(64) =====
	pop	eax				 ; pop value from stack
	mov	[ebp-8],	eax			 ; assign value to variable
		 ; ===== Finished generating variable assignment VariableDefinitionAssignment(entier, b, Entier(11), -8) =====
		 ; ===== Generating while loop =====
e2:
		 ; ===== Generating expression Operation(VariableRead(a, entier), OperationEnum.LESS_THAN, VariableRead(b, entier)) =====
		 ; ===== Generating operation Operation(VariableRead(a, entier), OperationEnum.LESS_THAN, VariableRead(b, entier)) =====
		 ; ===== Generating expression VariableRead(a, entier) =====
		 ; ===== Generating variable read VariableDefinitionAssignment(entier, a, Entier(1), -4) =====
	mov	eax,	[ebp-4]			 ; read VariableDefinitionAssignment(entier, a, Entier(1), -4)
	push	eax				 ; push VariableDefinitionAssignment(entier, a, Entier(1), -4) on stack
		 ; ===== Finished generating variable read VariableDefinitionAssignment(entier, a, Entier(1), -4) =====
		 ; ===== Finished generating expression VariableRead(a, entier) =====
		 ; ===== Generating expression VariableRead(b, entier) =====
		 ; ===== Generating variable read VariableDefinitionAssignment(entier, b, Entier(11), -8) =====
	mov	eax,	[ebp-8]			 ; read VariableDefinitionAssignment(entier, b, Entier(11), -8)
	push	eax				 ; push VariableDefinitionAssignment(entier, b, Entier(11), -8) on stack
		 ; ===== Finished generating variable read VariableDefinitionAssignment(entier, b, Entier(11), -8) =====
		 ; ===== Finished generating expression VariableRead(b, entier) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	cmp	eax,	ebx			 ; compare eax et ebx
	setl	al				 ; met 1 dans al si eax < ebx, 0 sinon
	movzx	eax,	al			 ; met 0 ou 1 dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.LESS_THAN =====
		 ; ===== Finished generating expression Operation(VariableRead(a, entier), OperationEnum.LESS_THAN, VariableRead(b, entier)) =====
	pop	eax		
	cmp	eax,	0	
	je	e3		
		 ; ===== Generating expression Entier(5) =====
	push	5		
		 ; ===== Finished generating expression Entier(5) =====
	pop	eax		
	mov	[ebp-16],	eax	
		 ; ===== Generating expression VariableRead(a, entier) =====
		 ; ===== Generating variable read VariableDefinitionAssignment(entier, a, Entier(1), -4) =====
	mov	eax,	[ebp-4]			 ; read VariableDefinitionAssignment(entier, a, Entier(1), -4)
	push	eax				 ; push VariableDefinitionAssignment(entier, a, Entier(1), -4) on stack
		 ; ===== Finished generating variable read VariableDefinitionAssignment(entier, a, Entier(1), -4) =====
		 ; ===== Finished generating expression VariableRead(a, entier) =====
	pop	eax		
	call	iprintLF		
		 ; ===== Generating variable assignment VariableDefinitionAssignment(entier, a, Entier(1), -4) =====
		 ; ===== Generating expression Operation(VariableRead(a, entier), OperationEnum.PLUS, VariableRead(c, entier)) =====
		 ; ===== Generating operation Operation(VariableRead(a, entier), OperationEnum.PLUS, VariableRead(c, entier)) =====
		 ; ===== Generating expression VariableRead(a, entier) =====
		 ; ===== Generating variable read VariableDefinitionAssignment(entier, a, Entier(1), -4) =====
	mov	eax,	[ebp-4]			 ; read VariableDefinitionAssignment(entier, a, Entier(1), -4)
	push	eax				 ; push VariableDefinitionAssignment(entier, a, Entier(1), -4) on stack
		 ; ===== Finished generating variable read VariableDefinitionAssignment(entier, a, Entier(1), -4) =====
		 ; ===== Finished generating expression VariableRead(a, entier) =====
		 ; ===== Generating expression VariableRead(c, entier) =====
		 ; ===== Generating variable read VariableDefinitionAssignment(entier, c, Entier(5), -16) =====
	mov	eax,	[ebp-16]			 ; read VariableDefinitionAssignment(entier, c, Entier(5), -16)
	push	eax				 ; push VariableDefinitionAssignment(entier, c, Entier(5), -16) on stack
		 ; ===== Finished generating variable read VariableDefinitionAssignment(entier, c, Entier(5), -16) =====
		 ; ===== Finished generating expression VariableRead(c, entier) =====
	pop	ebx				 ; dépile la seconde operande dans ebx
	pop	eax				 ; dépile la permière operande dans eax
	add	eax,	ebx			 ; effectue l'opération eaxOperationEnum.PLUSebx et met le résultat dans eax
	push	eax				 ; empile le résultat
		 ; ===== Finished operation OperationEnum.PLUS =====
		 ; ===== Finished generating expression Operation(VariableRead(a, entier), OperationEnum.PLUS, VariableRead(c, entier)) =====
	pop	eax				 ; pop value from stack
	mov	[ebp-4],	eax			 ; assign value to variable
		 ; ===== Finished generating variable assignment VariableDefinitionAssignment(entier, a, Entier(1), -4) =====
	jmp	e2		
e3:
	push	eax		
		 ; ===== Finished generating while loop =====
	leave			
	ret			
		 ; ===== End of main function =====
_start:
	call	main		
	mov	eax,	1			 ; 1 est le code de SYS_EXIT
	mov	ebx,	0			 ; 0 est le code de retour correct ici
	int	0x80				 ; exit
