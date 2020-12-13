vectorMax:
	push {r4-r7, lr}
	mov r7, r1
	mov r6, r0
	
	ldr r4, [r6}]
	mov r5, #1
	
	forvector:
		cmp r5, r7
		bge salir
		
			mov r0, r4
			ldr r1, [r0, r5 ldl #2]
			
			bl maxi
			blr r4, r0
			
		
		add r5, r5 #1
	b forvector
	

	salir:
		mov r0, r4
		
		pop {r4-r7, lr}
		mov pc, lr