section .text
global _ft_strdup
extern _malloc
extern ___error

_ft_strdup:
				mov rax, 0
				jmp while

incrementation:
				inc rax

while:
				cmp BYTE[rdi + rax],0
				jne incrementation
				je programme

programme:
				inc rax
				mov rsi, rax
				call _malloc
				cmp rax, 0
				je error
				cmp BYTE[rsi + rax],0
				je exit
				mov rax, 0
				mov dl, BYTE[rdi + rax]
				mov BYTE[rdi + rax], dl
				jne incrementation

error:
				mov rax, 12
				push rax
				call ___error
				pop qword[rax]
				mov rax, 0
				ret

exit:
				mov dl, 0
				mov rax, rsi
				ret
