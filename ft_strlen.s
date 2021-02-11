section .text
global _ft_strlen

_ft_strlen:
			mov rax,0				;i=0
			jmp loop_function		;jump to loop_function
incrementation:
			inc rax					;increment rax registre
loop_function:
			cmp BYTE[rdi + rax],0	;while str[i] != '\0'
			jne incrementation		;i++
fin:
			ret						;return i
