.data

a: .word 0x123456FA
b: .word 0x11111111


.text
.global main
main:


	ldr r0, =a
	ldr r1, =b
	
	ldr r2, [r1]
	
	str r1, [r2]
	
	
	
	
mov pc, lr