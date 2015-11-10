{-
	2520 is the smallest number that can be divided by each of the
	numbers from 1 to 10 without any remainder.

	What is the smallest positive number that is evenly divisible
	by all of the numbers from 1 to 20?
-}

-- Just check if a number is divisible for all numbers up to a
-- certain divisor.
isDivisibleUpTo n divisor = all (\x -> rem n x == 0) [2..divisor] 
isDivisibleUpTo10 n = isDivisibleUpTo n 10
isDivisibleUpTo20 n = isDivisibleUpTo n 20

-- Increment the number until we reach the right answer, starting
-- from a given starting point.
smallestProduct start
	| isDivisibleUpTo20 start = start
	| otherwise = smallestProduct (start + 1)

ans n = smallestProduct n

main = putStrLn (show (ans 2520))