%include	"io.asm"
section	.bss
sinput:	resb	255	;reserve a 255 byte space in memory for the users input string
v$a:	resd	1
section	.text
global _start
_start:
	push	0		
	pop	eax		
	cmp	eax,	0	
	je	e0		
	push	0		
	pop	eax		
	call	iprintLF		
	jmp	e1		
e0:
e1:
	push	eax		
	push	1		
	pop	eax		
	cmp	eax,	0	
	je	e2		
	push	1		
	pop	eax		
	call	iprintLF		
	jmp	e3		
e2:
e3:
	push	eax		
	push	0		
	pop	eax		
	cmp	eax,	0	
	je	e4		
	push	0		
	pop	eax		
	call	iprintLF		
	jmp	e5		
e4:
	push	2		
	pop	eax		
	call	iprintLF		
e5:
	push	eax		
	push	1		
	pop	eax		
	cmp	eax,	0	
	je	e6		
	push	3		
	pop	eax		
	call	iprintLF		
	jmp	e7		
e6:
	push	0		
	pop	eax		
	call	iprintLF		
e7:
	push	eax		
	push	0		
	pop	eax		
	cmp	eax,	0	
	je	e8		
	push	0		
	pop	eax		
	call	iprintLF		
	jmp	e9		
e8:
	push	0		
	pop	eax		
	cmp	eax,	0	
	je	e10		
	push	0		
	pop	eax		
	call	iprintLF		
	jmp	e11		
e10:
e11:
	push	eax		
e9:
	push	eax		
	push	0		
	pop	eax		
	cmp	eax,	0	
	je	e12		
	push	0		
	pop	eax		
	call	iprintLF		
	jmp	e13		
e12:
	push	1		
	pop	eax		
	cmp	eax,	0	
	je	e14		
	push	4		
	pop	eax		
	call	iprintLF		
	jmp	e15		
e14:
e15:
	push	eax		
e13:
	push	eax		
	push	1		
	pop	eax		
	cmp	eax,	0	
	je	e16		
	push	5		
	pop	eax		
	call	iprintLF		
	jmp	e17		
e16:
	push	0		
	pop	eax		
	cmp	eax,	0	
	je	e18		
	push	0		
	pop	eax		
	call	iprintLF		
	jmp	e19		
e18:
e19:
	push	eax		
e17:
	push	eax		
	push	1		
	pop	eax		
	cmp	eax,	0	
	je	e20		
	push	6		
	pop	eax		
	call	iprintLF		
	jmp	e21		
e20:
	push	1		
	pop	eax		
	cmp	eax,	0	
	je	e22		
	push	0		
	pop	eax		
	call	iprintLF		
	jmp	e23		
e22:
e23:
	push	eax		
e21:
	push	eax		
	push	0		
	pop	eax		
	cmp	eax,	0	
	je	e24		
	push	0		
	pop	eax		
	call	iprintLF		
	jmp	e25		
e24:
	push	0		
	pop	eax		
	cmp	eax,	0	
	je	e26		
	push	0		
	pop	eax		
	call	iprintLF		
	jmp	e27		
e26:
	push	7		
	pop	eax		
	call	iprintLF		
e27:
	push	eax		
e25:
	push	eax		
	push	0		
	pop	eax		
	cmp	eax,	0	
	je	e28		
	push	0		
	pop	eax		
	call	iprintLF		
	jmp	e29		
e28:
	push	1		
	pop	eax		
	cmp	eax,	0	
	je	e30		
	push	8		
	pop	eax		
	call	iprintLF		
	jmp	e31		
e30:
	push	0		
	pop	eax		
	call	iprintLF		
e31:
	push	eax		
e29:
	push	eax		
	push	1		
	pop	eax		
	cmp	eax,	0	
	je	e32		
	push	9		
	pop	eax		
	call	iprintLF		
	jmp	e33		
e32:
	push	0		
	pop	eax		
	cmp	eax,	0	
	je	e34		
	push	0		
	pop	eax		
	call	iprintLF		
	jmp	e35		
e34:
	push	0		
	pop	eax		
	call	iprintLF		
e35:
	push	eax		
e33:
	push	eax		
	push	1		
	pop	eax		
	cmp	eax,	0	
	je	e36		
	push	10		
	pop	eax		
	call	iprintLF		
	jmp	e37		
e36:
	push	1		
	pop	eax		
	cmp	eax,	0	
	je	e38		
	push	0		
	pop	eax		
	call	iprintLF		
	jmp	e39		
e38:
	push	0		
	pop	eax		
	call	iprintLF		
e39:
	push	eax		
e37:
	push	eax		
	push	1		
	pop	eax		
	cmp	eax,	0	
	je	e40		
	push	11		
	pop	eax		
	call	iprintLF		
	jmp	e41		
e40:
	push	1		
	pop	eax		
	cmp	eax,	0	
	je	e42		
	push	0		
	pop	eax		
	call	iprintLF		
	jmp	e43		
e42:
	push	1		
	pop	eax		
	cmp	eax,	0	
	je	e44		
	push	0		
	pop	eax		
	call	iprintLF		
	jmp	e45		
e44:
	push	0		
	pop	eax		
	call	iprintLF		
e45:
	push	eax		
e43:
	push	eax		
e41:
	push	eax		
	push	0		
	pop	eax		
	cmp	eax,	0	
	je	e46		
	push	0		
	pop	eax		
	call	iprintLF		
	jmp	e47		
e46:
	push	1		
	pop	eax		
	cmp	eax,	0	
	je	e48		
	push	12		
	pop	eax		
	call	iprintLF		
	jmp	e49		
e48:
	push	1		
	pop	eax		
	cmp	eax,	0	
	je	e50		
	push	0		
	pop	eax		
	call	iprintLF		
	jmp	e51		
e50:
	push	0		
	pop	eax		
	call	iprintLF		
e51:
	push	eax		
e49:
	push	eax		
e47:
	push	eax		
	push	0		
	pop	eax		
	cmp	eax,	0	
	je	e52		
	push	0		
	pop	eax		
	call	iprintLF		
	jmp	e53		
e52:
	push	0		
	pop	eax		
	cmp	eax,	0	
	je	e54		
	push	0		
	pop	eax		
	call	iprintLF		
	jmp	e55		
e54:
	push	1		
	pop	eax		
	cmp	eax,	0	
	je	e56		
	push	13		
	pop	eax		
	call	iprintLF		
	jmp	e57		
e56:
	push	0		
	pop	eax		
	call	iprintLF		
e57:
	push	eax		
e55:
	push	eax		
e53:
	push	eax		
	push	0		
	pop	eax		
	cmp	eax,	0	
	je	e58		
	push	0		
	pop	eax		
	call	iprintLF		
	jmp	e59		
e58:
	push	0		
	pop	eax		
	cmp	eax,	0	
	je	e60		
	push	0		
	pop	eax		
	call	iprintLF		
	jmp	e61		
e60:
	push	0		
	pop	eax		
	cmp	eax,	0	
	je	e62		
	push	0		
	pop	eax		
	call	iprintLF		
	jmp	e63		
e62:
	push	14		
	pop	eax		
	call	iprintLF		
e63:
	push	eax		
e61:
	push	eax		
e59:
	push	eax		
	push	0		
	pop	eax		
	cmp	eax,	0	
	je	e64		
	push	0		
	pop	eax		
	call	iprintLF		
	jmp	e65		
e64:
	push	0		
	pop	eax		
	cmp	eax,	0	
	je	e66		
	push	0		
	pop	eax		
	call	iprintLF		
	jmp	e67		
e66:
	push	0		
	pop	eax		
	cmp	eax,	0	
	je	e68		
	push	0		
	pop	eax		
	call	iprintLF		
	jmp	e69		
e68:
e69:
	push	eax		
e67:
	push	eax		
e65:
	push	eax		
	mov	eax,	1			 ; 1 est le code de SYS_EXIT
	mov	ebx,	0			 ; 0 est le code de retour correct ici
	int	0x80				 ; exit
