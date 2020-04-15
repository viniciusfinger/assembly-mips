	.text
	.globl main
	
main:   addi $s0,$0,1 #criando índice com valor 1 como inicial
	
loop:	
	#Construindo a frase (N x N = )
	beq $s0, 11, exit #compara se o índice = 11, pois só quero que minha tábuada vá até 10.
	la $s1, valor
	lw $s1,0($s1)
	
	la $a0, ($s1)
	li $v0, 1
	syscall
	
	la $a0, vezes
	li $v0, 4
	syscall
	
	la $a0, ($s0)
	li $v0, 1
	syscall
	
	la $a0, igual
	li $v0, 4
	syscall
	
	#Multiplicando N x índice
	mul $a0,$s0,$s1
	li $v0,1
	syscall
	
	la $a0, enter
	li $v0, 4
	syscall

	addi $s0,$s0,1 #índice++
	j loop


exit:	li $v0, 10
	syscall


	.data
valor:	.word 2                #aqui vai o valor que você deseja que seja a tabuada
igual:	.asciiz " = "
vezes:	.asciiz " x "
enter:	.asciiz "\n"
