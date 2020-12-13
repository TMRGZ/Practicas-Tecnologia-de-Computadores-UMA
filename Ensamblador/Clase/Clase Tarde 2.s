
hist:
	push {r4-r5}
	
	mov r4, #0
	mov r5, #0
	
	loop:
		cmp r4, r2
		bge salir
		
		ldr r3, [r1], #4
		
		cmp r3, r0
		addeq r5, r5, #1
		
		add r4, r4, #1
	b loop
	
	salir:
		mov r0, r5
		pop {r4-r5}
		mov pc, lr