{-
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
-}

isPrime n = all (\x -> rem n x /= 0) [2..(ceiling (sqrt (fromIntegral (n-1))))]

ans = sum (filter isPrime [2..2000000])

main = putStrLn (show ans)