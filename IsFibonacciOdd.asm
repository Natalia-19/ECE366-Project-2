#.text 
	.globl IsFibonacciOdd
IsFibonacciOdd:
    addi $sp, $sp, -8     # Allocate stack space
    sw $ra, 4($sp)        # Save return address
    sw $a0, 0($sp)        # Save original n

    jal Fibonacci         # Call Fibonacci(n)
    move $a0, $v0         # Move result of Fibonacci(n) to $a0 for Odd

    jal Odd               # Call Odd(Fib(n)), result in $v0

    lw $a0, 0($sp)        # Restore original $a0
    lw $ra, 4($sp)        # Restore return address
    addi $sp, $sp, 8      # Restore stack
    jr $ra
