.text
.global fib

fib:

mov r1, #0	@Primer numero
mov r2, #1	@Segundo numero	
mov r3, #1	@Contador
push {r4}
	
	loop:
		
		cmp	r3, r0
		bge salir
		
		add r4, r1, r2
		
		mov r1, r2
		mov r2, r4
		
		add r3, r3, #1
		b loop

	salir:
		pop {r4}
		cmp r1, #0
		movgt r0, r2
		mov pc, lr
