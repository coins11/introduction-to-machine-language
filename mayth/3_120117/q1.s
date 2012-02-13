.data
.align 4
x: .long 0x00000003
y: .long 0x00000005
.text
.globl main
main:
    mov $0, %eax
    mov x, %ebx
    mov y, %ecx
L1:
    mov %ecx, %edx
    cmp $0, %ecx
    je end
    and $1, %edx
    jne addb
    jmp shift
addb:
    add %ebx, %eax
shift:
    shl $1, %ebx
    shr $1, %ecx
    jmp L1
end:
    call stop
