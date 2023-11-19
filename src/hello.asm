section .data
    msg db 'Welcome to my first assembly console program.', 0
    msgtwo db 'I think I like how assembly is made.', 0
    msgthree db 'It is pretty inspiring.', 0

section .text
    global main
    extern puts

main:
    ; Msg
    sub rsp, 28
    mov rcx, msg
    call puts
    add rsp, 28

    ; Msg
    sub rsp, 28
    mov rcx, msgtwo
    call puts
    add rsp, 28

    ; Msg
    sub rsp, 28
    mov rcx, msgthree
    call puts
    add rsp, 28

    ; Exit
    mov eax, 60
    xor edi, edi
    syscall