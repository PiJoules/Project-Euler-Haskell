{-
	The prime factors of 13195 are 5, 7, 13 and 29.

	What is the largest prime factor of the number 600851475143?
-}

-- Keep dividing the dividend by the divisor until it is no
-- longer divisible by the divisor.
keepDividing dividend divisor
	| mod dividend divisor == 0 = keepDividing (div dividend divisor) divisor
	| otherwise = dividend

-- Increment the divisor until it equals the divident.
-- TIL /= means not equals in haskell.
largestPrimeFactorGreaterThan n primeNum
		| x == 1 = primeNum
		| mod x primeNum /= 0 = largestPrimeFactorGreaterThan x (primeNum + 1)
		| otherwise = primeNum
	where x = keepDividing n primeNum

-- Because I don't know how to give a default value,
-- do somethign that seems awkward like creating another
-- function for doing the same thing but w/ a default val.
largestPrimeFactor n = largestPrimeFactorGreaterThan n 2

main = putStrLn (show (largestPrimeFactor 600851475143))