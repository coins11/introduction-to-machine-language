.data
.align 4
a: .long 1,1,0,0,0,0,0,0,0,0
.text
.globl main
main:
    mov $1, %eax
    mov $0, %ecx
    mov $0, %edx
L1:
    cmp $9, %eax
    je L2
    mov a(, %eax, 4), %edx
    add a(, %ecx, 4), %edx
    add $1, %eax
    add $1, %ecx
    mov %edx, a(, %eax, 4)
    jmp L1
L2:
    mov a(, %eax, 4), %ebx
    call stop
