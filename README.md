# PrimeP

Common Lisp predicate of a prime number using the ancient algorithm of the Sieve of Eratosthenes. 
If you cannot define a prime through a sequence, you define a prime number by saying it by saying what it is not.

This algorithm checks to see if the given number is a prime number or if it is not.
The Sieve of Eratosthenes returns the 'random' sequence of prime numbers up to to a given number through the same method I have shown you.


![Sieve_of_Eratosthenes_animation](https://user-images.githubusercontent.com/22084147/228866250-38f952ff-5ef1-4347-b205-f0b673badd70.gif)

This is the function in practice:

![image](https://user-images.githubusercontent.com/22084147/228870305-b1c37e50-0dd9-4c15-ab2c-b00b0ac6fb60.png)
# Eucidlids sequence and how iteration does not help
 In this instance, eucilids sequence is ineffecive, here is why:
 
 -> Eucilids sequence skips 5, so it can only be used for the numbers 2,3 and 7
 
 -> To split them up and have the '(not(zerop(mod n 5)))' after eucilids iteration, makes the code more abstact and messy rather then clearer + faster as iteration is usually intended to do.
 
-> Although I could put the numbers into a list, it would mean creating a variable so I do not believe it would make the code faster or have less lines.

# Modulus and the building blocks of numbers

-> the idea between using mod was that if something is divisible by the any of the building blocks of all numbers (2, 3 ,5 and 7) and returns 0.

-> this proves proves that the number is NOT a prime number because prime numbers are only divisible by themselves and 1.

-> so if mod returns a remainder for all instances that are TRUE, (AND all other results are T) then it is a prime number (output -> T).

-> the beginning of the if statement is made so the buiding blocks are not accidentaly said to be false, since they are prime numbers.
