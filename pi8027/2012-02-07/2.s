.text
.globl fib
fib:
    push %ebp
    mov %esp, %ebp
    sub $4, %esp
    cmp $1, 8(%ebp)
    jle L1
    sub $1, 8(%ebp)
    push 8(%ebp)
    call fib
    mov %eax, -4(%ebp)
    sub $1, 8(%ebp)
    push 8(%ebp)
    call fib
    add -4(%ebp), %eax
    jmp L2
L1: mov $1, %eax
L2: mov %ebp, %esp
    pop %ebp
    ret
