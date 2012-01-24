.data
.align 4
x: .long 0x00124011, 0x3130ffff
y: .long 0x07001245, 0x12f01348
r: .long 0
.text
.globl main
main:
    mov x, %eax
    mov y, %edx
    mul %edx
    mov %eax, %esi
    mov %edx, %ebx
    mov x, %eax
    mov y+4, %edx
    mul %edx
    mov %eax, %edi
    mov %edx, %ecx
    mov x+4, %eax
    mov y, %edx
    mul %edx
    add %edi, %ebx
    adc %edx, %ecx
    mov %eax, %edi
    jnc L1
    add $1, r
L1: mov x+4, %eax
    mov y+4, %edx
    mul %edx
    add %edi, %ebx
    adc %eax, %ecx
    jnc L2
    add $1, r
L2: mov %esi, %eax
    add r, %eax
    call stop

