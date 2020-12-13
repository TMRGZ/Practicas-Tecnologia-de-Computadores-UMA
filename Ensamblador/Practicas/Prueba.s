.data

a: .word 2
b: .word 5
c: .word 0

cadena: .ascii "Esto es una cadena"			@ Cadena estandar  -  ,0 - significa fin de cadena 
cadena2: .asciz "Esto es una cadena"		@ Cadena con fin incluido


.text
.global main
main:
	ldr r0, =a
	ldr r1, [r0]
	ldr r3, =b
	ldr r2, [r3]
	ldr r4, =c
	ldr r5, [r4]
	
	
	add r0, r1, r2
	str r0, [r4]
	
	
	
	
mov pc, lr
	
	