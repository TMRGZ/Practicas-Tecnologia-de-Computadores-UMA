.data
tam: .word 8
datos: .word 2, 4, 6, 8 ,-2, -4, -6, -7
res: .word 0

.text
.global main

main:

	ldr r0, =tam
	ldr r1, [r0]
	ldr r2, =datos
	mov r3, #0
	ldr r5, [r2]
	
loop:
	cmp r1, #0
	beq sal
	
	ldr r4, [r2], #4

	cmp r4, r5		
		
		movgt r5, r4
	
	sub r1, #1
	b loop

sal:
	ldr r0, =res  
	str r5, [r0]  
	bx lr