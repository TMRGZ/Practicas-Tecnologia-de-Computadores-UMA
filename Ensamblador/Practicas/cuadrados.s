.data
res: .word 0

.text

	push {r4}
	cuad:
		cmp r2, r0
		bgt salir
		
		
		mov r3, r1
		mul r3, r3, r3
		add r4, r4, r3
		
		
		add r1, r1, #1
		add r2, r2, #1
		b cuad
		
	salir:
		ldr r0, =res
		str r4, [r0]
		pop {r4}
		mov pc, lr