	.text 		#demonstra que as instruções a seguir estarão descritas em texto
	.globl main #denomina nome da funçao do programa principal, como int main (void) {} na linguagem C.

main:	la $t1,v1 #indicando o vetpr 1 para o registrador t1
	la $t2,v2 #indicando o vetor 2 para o registrador t2
	la $t3,v3 #indicando o vetor 3 para o registrador t3

	lw $t4,0($t1) #carregando no registrador t4 o primeiro byte do vetor 1
	lw $t5,0($t2) #carregando no registrador t5 o primeiro byte do vetor 2
	
	add $t4,$t4,$t5 #adicionando o valor do registrador t4 + o valor do registrador t5 e reescrevando em t4
	sw $t4,0($t3)   #guardando o valor de t4 no primeiro byte do vetor 3

	lw $t4,4($t1)	#carregando no registrador t4 o segundo byte do vetor 1
	lw $t5,4($t2)	#carregando no registrador t5 o segundo byte do vetor 2
	
	add $t4,$t4,$t5	#adicionando o valor do registrador t4 + o valor do registrador t5 e reescrevando em t4
	sw $t4,4($t3)	#guardando o valor de t4 no segundo byte do vetor 3
	
	lw $t4,8($t1)	#carregando no registrador t4 o terceiro byte do vetor 1
	lw $t5,8($t2)	#carregando no registrador t4 o terceiro byte do vetor 2
	
	add $t4,$t4,$t5	#adicionando o valor do registrador t4 + o valor do registrador t5 e reescrevando em t4
	sw $t4,8($t3)	#guardando o valor de t4 no terceiro byte do vetor 3
	
	lw $t4,12($t1)	#carregando no registrador t4 o quarto byte do vetor 1
	lw $t5,12($t2)	#carregando no registrador t4 o quarto byte do vetor 2
	
	add $t4,$t4,$t5 #adicionando o valor do registrador t4 + o valor do registrador t5 e reescrevando em t4
	sw $t4,12($t3)	#guardando o valor de t4 no quarto byte do vetor 3
	
	li $v0, 10	#carregar instantaneamente o valor 10 no registrador v10 como forma de demonstrar código executado com sucesso.
	syscall		#demonstra ao assembler que é o fim do código conforme código em $v0.

	.data		#demonstra inicio da divisão em que serão definidos os valores dos vetores.
v1:	.word 0x12 0xff 0x3 0x14 #.word guarda uma lista de 32 bits 
v2:	.word 0x12 0xff 0x3 0x14 # ""
v3:	.word 0x0  0x0  0x0 0x0  # ""
size:	.word 4			# - 

