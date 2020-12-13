maxi:

	push {r4}
	
	mov r4, r0
	
	cmp r4, r1
		movlt r4, r1
		
	mov r0, r4
		
	pop {r4}
	
mov pc, lr



&LLamar a funcion

	ldr r0, =a
	ldr r4, [r0]
	ldr r0, =b
	ldr r5, [r0]
	
	mov r0, r4
	mov r1, r5
	
	bl maxi
	blr r1, =m
	
	str r0, [r1]
	mov pc, lr