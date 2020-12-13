.data 
datos: .word 2, 4, 6, 8, -2 -4, -6 -7 
tam:   .word 8 
res:   .word 0 
uno:   .word 1 
cuatro: .word 4 

.text 
main:  lw $8, tam($0)         # $8 contador de elementos a leer
	add $9, $0, $0         # $9 dirección del vector “datos” a leer        
	lw $1, uno($0)         # $1 valor 1        
	lw $4, cuatro($0)      # $4 valor 4    
	sub $11, $11, $11      # $11 acumulador de la suma loop:  

loop:	lw $10, 0($9)      
	add $11, $11, $10    
	add $9, $9, $4    
	sub $8, $8, $1    
	beq $8, $0, salir    
	j loop 

salir: sw $11, res($0)