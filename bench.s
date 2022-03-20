# argument: pushed to stack
# return: %rax

.global _start

.text

_start:
    call main
    call exit

run_code:
    push %rbp
    mov %rsp, %rbp

    # code here
    mov -8(%rbp), %rax
    cmp $1, %rax
    je equal_to_one
    jmp not_equal_to_one

    equal_to_one:
        mov $1, %rax
        jmp return

    not_equal_to_one:
        mov -8(%rbp), %rcx
        sub $1, %rcx
        push %rcx
        call run_code
        mov -8(%rbp), %rcx
        imul %rcx, %rax

    return:
        pop %rbp
        ret

main:
    push %rbp
    mov %rsp, %rbp

    # call run_code
    push $10
    call run_code

    xor %rax, %rax
    pop %rbp
    ret

exit:
    mov %rax, %rdi
    mov $60, %rax
    syscall
