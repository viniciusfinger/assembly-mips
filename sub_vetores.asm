	.text
	.globl main

main:	la $t1,v1
	la $t2,v2
	la $t4,v4

	lw $t5,0($t1)
	lw $t6,0($t2)
	
	sub $t5,$t5,$t6
	sw $t5,0($t4)

	lw $t5,4($t1)
	lw $t6,4($t2)
	
	sub $t5,$t5,$t6
	sw $t5,4($t4)
	
	lw $t5,8($t1)
	lw $t6,8($t2)
	
	sub $t5,$t5,$t6
	sw $t5,8($t4)
	
	lw $t5,12($t1)
	lw $t6,12($t2)
	
	sub $t5,$t5,$t6
	sw $t5,12($t4)
	
	lw $t5,16($t1)
	lw $t6,16($t2)
	
	sub $t5,$t5,$t6
	sw $t5,16($t4)
	
	li $v0, 10
	syscall

	.data
v1:	.word 2 4 5 6 7
v2:	.word 1 3 2 3 8
v4:	.word 0x0 0x0 0x0 0x0
size:	.word 4

