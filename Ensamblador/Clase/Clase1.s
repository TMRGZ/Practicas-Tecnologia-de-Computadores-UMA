mov r0, #0
mov r1, #1

	
loop:
	cmp r0, #128
	beq salir
	
	lsl r0, r0, #1
	add r1, r1, #1
	
b loop
	
salir:
	mov pc, lr