.text
    .globl Fibonacci

Fibonacci:
    # Input: $a0 = n
    # Output: $v0 = Fibonacci(n)

    addi $t0, $zero, 0    # t0 = Fib(0) = 0
    addi $t1, $zero, 1    # t1 = Fib(1) = 1

    beq $a0, $zero, fib_0  # If n == 0, go to fib_0
    beq $a0, $t1, fib_1    # If n == 1, go to fib_1

    addi $t2, $zero, 2    # Counter i = 2
fib_loop:
    beq $t2, $a0, fib_done  # If i == n, go to fib_done

    add $t3, $t0, $t1     # t3 = Fib(i) = Fib(i-1) + Fib(i-2)
    move $t0, $t1         # Shift Fib(i-1) -> Fib(i-2)
    move $t1, $t3         # Shift Fib(i) -> Fib(i-1)

    addi $t2, $t2, 1      # i++
    b fib_loop            # Repeat loop

fib_done:
    move $v0, $t3         # Store result in $v0
    b end                 # Jump to end

fib_0:
    move $v0, $t0         # Return 0
    b end                 # Jump to end

fib_1:
    move $v0, $t1         # Return 1
    b end                 # Jump to end

end:
