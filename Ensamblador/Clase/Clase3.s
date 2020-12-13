mov r0, #0 @int i=0



loopfor:
	cmp r0, #200
	bge salir
	
	ldr r1, =scores
	lsl r2, r0, #2
	add r1, r1, r2
	ldr r2, [r1]
	add r3, r2, #10
	
	str r3, [r1]
	
	add r0, r0, #1
	
b loopfor

salir:
	mov pc, lr