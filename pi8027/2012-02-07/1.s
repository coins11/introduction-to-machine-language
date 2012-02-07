.text
.globl foo
foo:
    push %ebp
    mov %esp, %ebp
    sub $12, %esp
    mov 8(%ebp), %eax
    add 12(%ebp), %eax
    mov %eax, -4(%ebp)
    mov 8(%ebp), %eax 
    sub 12(%ebp), %eax
    mov %eax, -8(%ebp)
    mov 8(%ebp), %eax
    imul 12(%ebp), %eax
    mov %eax, -12(%ebp)
    mov %ebp, %esp
    pop %ebp
    ret
