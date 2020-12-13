.data
tam: .word 8
data: .word 5,3,9,8,5,7,3,1
result: .word 0,0,0,0,0,0,0,0

.text
.global main
main:
	ldr r4, =tam
	ldr r4, [r4]
	
	ldr r5, =data
	
	ldr r6, =result
	
	sub r7, r4, #1
	lsl r7, r7, #2
	add r6, r6, r7
	
	mov r7, #0
	
	loop:
		cmp r7, r4
		bge salir
		
		ldr r0, [r5], #4
		str r0, [r6] #-4
		
		add r7, r7, #1
	b loop
	
	salir: 
		mov pc, lr
		