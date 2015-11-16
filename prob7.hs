{-
	By listing the first six prime numbers:
	2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

	What is the 10001st prime number?
-}

isPrime n = all (\x -> rem n x /= 0) [2..(ceiling (sqrt (fromIntegral (n-1))))]

-- if isPrime(num):
--     i++
-- if i >= n:
--     return num
-- return nthPrime(n, i, num+1)

nexti i num
	| isPrime(num) = i+1
	| otherwise = i

_nthPrime n i num
		| next_i == n = num
		| otherwise = _nthPrime n next_i (num+1)
	where next_i = nexti i num

nthPrime n = _nthPrime n 0 2

ans = nthPrime 10001

main = putStrLn (show ans)