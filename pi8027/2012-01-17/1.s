.data
.align 4
x:  .long 12
y:  .long 23
.text
.globl main
main:
    mov x, %eax
    mov y, %ebx
    mov $0, %cl
    mov $0, %edx
    jmp L2
L1: add $1, %cl
L2: cmp $32, %cl
    je L3
    mov $1, %esi
    shl %cl, %esi
    and %eax, %esi
    jz L1
    mov %ebx, %esi
    shl %cl, %esi
    add %esi, %edx
    jmp L1
L3: mov %edx, %eax
    call stop
