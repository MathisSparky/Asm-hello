section .data
    hello db 'Hello!', 0

section .text
    global main
    extern puts

main:
    sub rsp, 28

    mov rcx, hello
    call puts

    add rsp, 28
    ret