section .text
global _ft_strcpy

_ft_strcpy:
			mov rax,0					;i = 0;src = rsi; dest = rdi;
			jmp programme				;tmp = rdx(we take the lower 8 bits => dl)
incre:
			inc rax
programme:
			cmp BYTE[rsi + rax], 0		;while(src[i] != '\0')
			je exit
			mov dl, BYTE[rsi + rax]
			mov	BYTE[rdi + rax], dl
			jne incre
exit:
			mov dl,0
			mov rax,rdi
			ret


