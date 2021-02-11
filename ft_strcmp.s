section .text
global _ft_strcmp

_ft_strcmp:
			mov rax,0
			jmp prgrm
incre:
			inc rax
prgrm:
			cmp BYTE[rdi + rax],0
			cmp BYTE[rsi + rax],0
			mov dl, BYTE[rdi + rax]
			mov cl, BYTE[rsi + rax]
			cmp dl,cl
			jge	exit
			jl	na9iss
			jne incre
			jmp prgrm
exit:
			mov r8b ,BYTE[rdi + rax]
			sub r8b, BYTE[rsi + rax]
			mov rax,r8
			ret
na9iss:
			mov r8b ,BYTE[rsi + rax]
			sub r8b, BYTE[rdi + rax]
			neg r8
			mov rax,r8
			ret
