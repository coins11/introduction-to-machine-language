.data
.align 4
  x: .long 0x00124011, 0x3130FFFF
  y: .long 0x07001245, 0x12F01348
  a: .long 0, 0
  b: .long 0, 0
  r: .long 0
.text
.globl main
main:
  mov x, %eax
  mov y, %edx
  mul %edx
  mov %edx, a
  mov %eax, b
  
  mov x, %eax
  mov y+4, %edx
  mul %edx
  mov %edx, %ecx
  mov %eax, %ebx
  
  mov x+4, %eax
  mov y, %edx
  mul %edx
  add %eax,
  

  cal stop
