mov r0, #0	@ int i
mov r1, #0	@ int sum=0


loopfor:
	cmp r0, #10
	bge salir
	
	add r1, r1, r0
	add r0, r0, #1
	
b loopfor

salir:
	mov pc, lr