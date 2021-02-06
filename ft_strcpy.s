section .text
    global _ft_strcpy

_ft_strcpy:
    mov rax, -1
    increment:
        inc rax
    loop:
        mov cl, byte[rsi + rax]
        mov byte[rdi, rax], cl
        cmp cl , 0
        jne increment
    done:
    mov rax, rdi
    ret