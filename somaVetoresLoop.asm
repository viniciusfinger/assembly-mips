#Somar dois vetores e posicionar a resposta em um terceiro utilizando loop
  
  .text
	.globl main


main:	la $t0,V1
	la $t1,V2
	la $t2,V3
	
	add $s0,$0,$zero
	
	la $s1,size
	lw $s1,0($s1)
	
loop:	
	beq $s0,$s1, exit
	sll  $t3, $s0, 2  
	
	#carregar em T4 a posição i do vetor 1
	addu $t4, $t3, $t0
	lw   $t4, 0($t4)
	
	#carregar em t5 a posição i do vetor 2
	addu $t5, $t3, $t1
	lw   $t5,0($t5)
	
	addu $t5, $t4, $t5 #soma a posição dos dois vetores
	
	addu $t6, $t3, $t2 #armazena o valor da posição do indice no vetor 3 
	sw $t5,0($t6) #grava no vetor 3
	
	addi $s0,$s0,1
	j loop

exit:
	li $v0,10			
	syscall		

.data
V1: .word 0x12 0xff 0x3 0x14 0x878 0x31 0x62 0x10 0x5 0x16 0x20
V2: .word 0x12 0xff 0x3 0x14 0x878 0x31 0x62 0x10 0x5 0x16 0x20
V3: .word 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 
size: .word 11

