	.text
	.globl main
	
main:   addi $s0,$0,1
	
loop:	beq $s0, 11, exit
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
	
	
	mul $a0,$s0,$s1
	li $v0,1
	syscall
	
	la $a0, enter
	li $v0, 4
	syscall

	addi $s0,$s0,1
	j loop


exit:	li $v0, 10
	syscall


	.data
valor:	.word 99                    #aqui vai o valor que você deseja que seja a tabuada
igual:	.asciiz " = "
vezes:	.asciiz " x "
enter:	.asciiz "\n"
