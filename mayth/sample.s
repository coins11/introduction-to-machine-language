	.text
	.globl main
main:
  mov $0x77777777,%eax
	mov $0x55555555,%ebx
  add %eax, %ebx
	call stop
