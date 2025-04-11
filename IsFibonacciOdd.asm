.text 
	.globl IsFibonacciOdd
IsFibonacciOdd:
    addi $sp, $sp, -8       # Allocate stack space
    sw $ra, 4($sp)          # Save return address
    sw $a0, 0($sp)          # Save original n

    j call_Fibonacci        #Call Fibonacci(n)

after_fibonacci:
    move $a0, $v0           # Move result  of Fibonacci(n) into $a0 for Odd

    j call_Odd              # Call Odd(Fib(n)), result in $v0

after_odd:
    lw $a0, 0($sp)          # Restore original n
    lw $ra, 4($sp)          # Restore return address
    addi $sp, $sp, 8        # Restore stack space
    jr $ra                  # Return

#function call with jump to save the return adress
call_fibonacci:
    jal Fibonacci
    j after_fibonacci

call_odd:
    jal Odd
    j after_odd

end:
