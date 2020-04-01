#Desenvolver um algoritmo com loop que compute um vetor contendo os
#elementos comuns a 2 vetores. Em comuns deve ser armazenado o número de elementos
#comuns. O tamanho dos vetores é igual a todos.  
  
  .text
	.globl main


main:	la $t0,V1
	la $t1,V2
	la $t2,V3
	
	add $s0,$s0,$zero #indice
	
	la $s1, size      #tamanho
	lw $s1,0($s1)
	
	la $k0,commons
	lw $k0,0($k0)
loop:	
	beq $s0,$s1, exit #se o indicie for igual ao tamanho, sair
	sll  $t3, $s0, 2  #avança uma posição no indice
	
	#carregar em T4 a posição i do vetor 1
	addu $t4, $t3, $t0
	lw   $t4, 0($t4)
	
	#carregar em t5 a posição i do vetor 2
	addu $t5, $t3, $t1
	lw   $t5,0($t5)
	
	addi $s0,$s0,1
	bne $t5, $t4,loop  #se a posição i de V1 e V2 nao forem iguais,refaça o loop
	
	addu $t6, $t3, $t2 #armazena o valor da posição do indice no vetor 3 
	sw $t5,0($t6) #se a posição i de V1 e V2 forem iguais, vá para igual
	addi $k0,$k0,1

	j loop

exit:	
	li $v0,10			
	syscall		

.data
V1: .word 0x12 0xff 0x3 0x14 0x878
V2: .word 0x12 0x3 0x33 0x4 0x5
V3: .word 0x0 0x0 0x0 0X0 0x0
size: .word 5
commons: .word 0

