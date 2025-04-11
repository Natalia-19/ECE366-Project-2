README file for Project 2 Final Report

This project involves designing a MIPS assembly program to determine whether the nth Fibonacci number is odd. The solution consists of three key functions: Fibonacci(n): Computes the nth Fibonacci number. IsOdd(m): Determines if a number is odd using division by repeated subtraction. IsFibonacciOdd(n): Computes the nth Fibonacci number and checks if it is odd. Implementation Details

TEAM MEMBERS:

Adam Mouhtadi: amouh2

Natalia Smielinski: nsmie2

Sona Lawrence: slawr3

Sona worked on IsFibonacciOdd(n) that computes the nth Fibonacci number and checks if it is odd. Natalia and Adam provided assistance on testing and debugging and worked on the README file and Progress report.

Project Overview

The following functions are implemented based on the provided pseudo-code:

Fibonacci(n) This function computes the nth Fibonacci number iteratively: If n <= 1, return n. Otherwise, use two variables (a and b) to iteratively compute the Fibonacci sequence up to n. The result is stored in a register for later use.

IsOdd(m) This function determines whether a number m is odd: Uses division by repeated subtraction instead of the MIPS DIV instruction. Calls the division(x, y) function to determine m % 2. If the remainder is 0, returns False (0); otherwise, returns True (1).

Division by Repeated Subtractions (DRS) This function performs integer division using subtraction: Repeatedly subtracts y from x until x < y. The final value of x is the remainder of the division. Used by the IsOdd(m) function to compute m % 2.

IsFibonacciOdd(n) This function determines whether the nth Fibonacci number is odd: Calls Fibonacci(n) to compute Fib(n). Calls IsOdd(Fib(n)) to determine if the result is odd. Stores the final result (1 for True, 0 for False) in memory.

Program Execution Input: The integer n is stored in memory. Output: The result (1 if Fib(n) is odd, 0 otherwise) is stored in a specific memory location.

How to Run the Program Load the program into a MIPS simulator (e.g., MARS, SPIM). Set an input value for n in memory. Run the program and check the output memory location for the result.

How to run code:
	Load and run the program in the MIPS_MARS simulator that allows the user to test and debug in MIPS assembly. The goal for IsFibonacciOdd(n) function is to determine whether the nth Fibonacci number is odd or not. This function calls the Fibonacci(n) from part a and computes FIb(n). It then calls the IsOdd function to determine the result on whether the number is odd. It stores the value as 1 for even and 0 for odd in register $v0.

Github Link: 
	https://github.com/Natalia-19/ECE366-Project-2


ECE366-Project-2/README_2.md at main · Natalia-19/ECE366-Project-2 
