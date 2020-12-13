.text 
main:  
	lw $8, 16($0)        		# $8 contador de elementos a leer, tamaño vector 1
	add $7, $8, $0			#Copia de la posicion de vector
	
	lw $4, 0($0)			#Guardado un dato  
	lw $6, 4($0)			#Guardado un 1 para contador
	
	add $9, $0, $0       		#14 dirección del vector “datos” a leer        
	lw $1, 20($9)  			#Cargar direccion            
	lw $2, 44($9)

buclesuma:				#Avance de vectores
	add $10, $8, $4			#Cargado posicion segundo vector
	sub $7, $7, $6			#Contador buclesuma accionado
	beq $7, $0, loop		#Comparar contador buclesuma
	j buclesuma
			
loop:	
	lw $11, 0($1)
	lw $12, 0($10)
	
	add $1, $1, $4
	add $10, $10, $4
	
	sub $13, $11, $12		#Calcular distancia
	slt $14, $11, $12		#Comparacion
	beq $14, $0, noabsoluto		#Mandar a sumar si es bueno
	sub $13, $0, $13		#Cambio de signo
	j noabsoluto			#Mandar a sumar con signo cambiado
	
	
noabsoluto:
	add $15, $15, $15		#Sumar sumatorio
	sub $8, $8, $6    		#Controlador accionado
	beq $8, $0, salir    		#Comparar controlador
	j loop 

salir: 
	sw $15, 12($0)    		#Guardado final
	#HALT
