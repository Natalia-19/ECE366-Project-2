.text
    .globl Odd

Odd:
    # Input: $a0 = m
    # Output: $v0 = 1 if m is odd, 0 if even

    addi $t0, $zero, 2      # t0 = 2 (divisor)
    addi $t1, $zero, 0      # t1 = remainder (initially 0)

loop:
    blt $a0, $t0, done      # If m < 2, stop (remainder = m)
    sub $a0, $a0, $t0       # m = m - 2
    b loop                  # Repeat

done:
    beq $a0, $zero, even    # If remainder (m) == 0, it's even
    addi $v0, $zero, 1      # Return 1 (odd)
    b end

even:
    addi $v0, $zero, 0      # Return 0 (even)

end:
