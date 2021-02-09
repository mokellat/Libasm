			section .text
			global	_ft_strlen

_ft_strlen:
			mov rax,0
			jmp loop_function
incrementation:
			inc rax
loop_function:
			cmp BYTE[rdi + rax],0
			jne incrementation
fin:
			ret
