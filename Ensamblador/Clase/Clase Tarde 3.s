sqrtsum:
	push {r4-r7, lr}
	mov r4, #0
	mov r5, #0
	mov r6, r0
	mov r7, r1
	
	loop:
		cmp r4,r7
		bge salir
		
		ldr r0, [r6], #4
		
		bl sqrt
		
		add r5, r5, r0
		add r4, r4, #1
	b loop
	
	salir:
		mov r0, r5
		pop {r4-r7, pc}