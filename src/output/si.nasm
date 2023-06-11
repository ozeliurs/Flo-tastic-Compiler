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
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	eax		
	cmp	eax,	0	
	je	e0		
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
	jmp	e1		
e0:
e1:
	push	eax		
		 ; ===== Finished generating condition =====
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	eax		
	cmp	eax,	0	
	je	e2		
		 ; ===== Generating expression Entier(1) =====
	push	1		
		 ; ===== Finished generating expression Entier(1) =====
	pop	eax		
	call	iprintLF		
	jmp	e3		
e2:
e3:
	push	eax		
		 ; ===== Finished generating condition =====
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	eax		
	cmp	eax,	0	
	je	e4		
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
	jmp	e5		
e4:
		 ; ===== Generating expression Entier(2) =====
	push	2		
		 ; ===== Finished generating expression Entier(2) =====
	pop	eax		
	call	iprintLF		
e5:
	push	eax		
		 ; ===== Finished generating condition =====
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	eax		
	cmp	eax,	0	
	je	e6		
		 ; ===== Generating expression Entier(3) =====
	push	3		
		 ; ===== Finished generating expression Entier(3) =====
	pop	eax		
	call	iprintLF		
	jmp	e7		
e6:
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
e7:
	push	eax		
		 ; ===== Finished generating condition =====
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	eax		
	cmp	eax,	0	
	je	e8		
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
	jmp	e9		
e8:
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	eax		
	cmp	eax,	0	
	je	e10		
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
	jmp	e11		
e10:
e11:
	push	eax		
		 ; ===== Finished generating condition =====
e9:
	push	eax		
		 ; ===== Finished generating condition =====
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	eax		
	cmp	eax,	0	
	je	e12		
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
	jmp	e13		
e12:
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	eax		
	cmp	eax,	0	
	je	e14		
		 ; ===== Generating expression Entier(4) =====
	push	4		
		 ; ===== Finished generating expression Entier(4) =====
	pop	eax		
	call	iprintLF		
	jmp	e15		
e14:
e15:
	push	eax		
		 ; ===== Finished generating condition =====
e13:
	push	eax		
		 ; ===== Finished generating condition =====
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	eax		
	cmp	eax,	0	
	je	e16		
		 ; ===== Generating expression Entier(5) =====
	push	5		
		 ; ===== Finished generating expression Entier(5) =====
	pop	eax		
	call	iprintLF		
	jmp	e17		
e16:
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	eax		
	cmp	eax,	0	
	je	e18		
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
	jmp	e19		
e18:
e19:
	push	eax		
		 ; ===== Finished generating condition =====
e17:
	push	eax		
		 ; ===== Finished generating condition =====
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	eax		
	cmp	eax,	0	
	je	e20		
		 ; ===== Generating expression Entier(6) =====
	push	6		
		 ; ===== Finished generating expression Entier(6) =====
	pop	eax		
	call	iprintLF		
	jmp	e21		
e20:
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	eax		
	cmp	eax,	0	
	je	e22		
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
	jmp	e23		
e22:
e23:
	push	eax		
		 ; ===== Finished generating condition =====
e21:
	push	eax		
		 ; ===== Finished generating condition =====
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	eax		
	cmp	eax,	0	
	je	e24		
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
	jmp	e25		
e24:
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	eax		
	cmp	eax,	0	
	je	e26		
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
	jmp	e27		
e26:
		 ; ===== Generating expression Entier(7) =====
	push	7		
		 ; ===== Finished generating expression Entier(7) =====
	pop	eax		
	call	iprintLF		
e27:
	push	eax		
		 ; ===== Finished generating condition =====
e25:
	push	eax		
		 ; ===== Finished generating condition =====
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	eax		
	cmp	eax,	0	
	je	e28		
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
	jmp	e29		
e28:
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	eax		
	cmp	eax,	0	
	je	e30		
		 ; ===== Generating expression Entier(8) =====
	push	8		
		 ; ===== Finished generating expression Entier(8) =====
	pop	eax		
	call	iprintLF		
	jmp	e31		
e30:
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
e31:
	push	eax		
		 ; ===== Finished generating condition =====
e29:
	push	eax		
		 ; ===== Finished generating condition =====
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	eax		
	cmp	eax,	0	
	je	e32		
		 ; ===== Generating expression Entier(9) =====
	push	9		
		 ; ===== Finished generating expression Entier(9) =====
	pop	eax		
	call	iprintLF		
	jmp	e33		
e32:
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	eax		
	cmp	eax,	0	
	je	e34		
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
	jmp	e35		
e34:
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
e35:
	push	eax		
		 ; ===== Finished generating condition =====
e33:
	push	eax		
		 ; ===== Finished generating condition =====
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	eax		
	cmp	eax,	0	
	je	e36		
		 ; ===== Generating expression Entier(10) =====
	push	10		
		 ; ===== Finished generating expression Entier(10) =====
	pop	eax		
	call	iprintLF		
	jmp	e37		
e36:
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	eax		
	cmp	eax,	0	
	je	e38		
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
	jmp	e39		
e38:
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
e39:
	push	eax		
		 ; ===== Finished generating condition =====
e37:
	push	eax		
		 ; ===== Finished generating condition =====
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	eax		
	cmp	eax,	0	
	je	e40		
		 ; ===== Generating expression Entier(11) =====
	push	11		
		 ; ===== Finished generating expression Entier(11) =====
	pop	eax		
	call	iprintLF		
	jmp	e41		
e40:
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	eax		
	cmp	eax,	0	
	je	e42		
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
	jmp	e43		
e42:
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	eax		
	cmp	eax,	0	
	je	e44		
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
	jmp	e45		
e44:
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
e45:
	push	eax		
		 ; ===== Finished generating condition =====
e43:
	push	eax		
		 ; ===== Finished generating condition =====
e41:
	push	eax		
		 ; ===== Finished generating condition =====
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	eax		
	cmp	eax,	0	
	je	e46		
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
	jmp	e47		
e46:
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	eax		
	cmp	eax,	0	
	je	e48		
		 ; ===== Generating expression Entier(12) =====
	push	12		
		 ; ===== Finished generating expression Entier(12) =====
	pop	eax		
	call	iprintLF		
	jmp	e49		
e48:
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	eax		
	cmp	eax,	0	
	je	e50		
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
	jmp	e51		
e50:
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
e51:
	push	eax		
		 ; ===== Finished generating condition =====
e49:
	push	eax		
		 ; ===== Finished generating condition =====
e47:
	push	eax		
		 ; ===== Finished generating condition =====
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	eax		
	cmp	eax,	0	
	je	e52		
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
	jmp	e53		
e52:
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	eax		
	cmp	eax,	0	
	je	e54		
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
	jmp	e55		
e54:
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(True) =====
	push	1		
		 ; ===== Finished generating expression Boolean(True) =====
	pop	eax		
	cmp	eax,	0	
	je	e56		
		 ; ===== Generating expression Entier(13) =====
	push	13		
		 ; ===== Finished generating expression Entier(13) =====
	pop	eax		
	call	iprintLF		
	jmp	e57		
e56:
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
e57:
	push	eax		
		 ; ===== Finished generating condition =====
e55:
	push	eax		
		 ; ===== Finished generating condition =====
e53:
	push	eax		
		 ; ===== Finished generating condition =====
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	eax		
	cmp	eax,	0	
	je	e58		
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
	jmp	e59		
e58:
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	eax		
	cmp	eax,	0	
	je	e60		
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
	jmp	e61		
e60:
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	eax		
	cmp	eax,	0	
	je	e62		
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
	jmp	e63		
e62:
		 ; ===== Generating expression Entier(14) =====
	push	14		
		 ; ===== Finished generating expression Entier(14) =====
	pop	eax		
	call	iprintLF		
e63:
	push	eax		
		 ; ===== Finished generating condition =====
e61:
	push	eax		
		 ; ===== Finished generating condition =====
e59:
	push	eax		
		 ; ===== Finished generating condition =====
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	eax		
	cmp	eax,	0	
	je	e64		
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
	jmp	e65		
e64:
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	eax		
	cmp	eax,	0	
	je	e66		
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
	jmp	e67		
e66:
		 ; ===== Generating condition =====
		 ; ===== Generating expression Boolean(False) =====
	push	0		
		 ; ===== Finished generating expression Boolean(False) =====
	pop	eax		
	cmp	eax,	0	
	je	e68		
		 ; ===== Generating expression Entier(0) =====
	push	0		
		 ; ===== Finished generating expression Entier(0) =====
	pop	eax		
	call	iprintLF		
	jmp	e69		
e68:
e69:
	push	eax		
		 ; ===== Finished generating condition =====
e67:
	push	eax		
		 ; ===== Finished generating condition =====
e65:
	push	eax		
		 ; ===== Finished generating condition =====
	leave			
	ret			
		 ; ===== End of main function =====
_start:
	call	main		
	mov	eax,	1			 ; 1 est le code de SYS_EXIT
	mov	ebx,	0			 ; 0 est le code de retour correct ici
	int	0x80				 ; exit
