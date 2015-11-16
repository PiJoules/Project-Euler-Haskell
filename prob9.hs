{-
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a^2 + b^2 = c^2
For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
-}

-- Guess by checking each possible value for a, b, and c
is1000 a b c = (a < b && b < c) && (a+b+c == 1000) && ( (a*a) + (b*b) == (c*c) )

loop a b c
	| is1000 a b c = a*b*c
	| a >= 500 = loop 0 (b+1) c
	| b >= 500 = loop a 0 (c+1)
	| c >= 500 = error "Reached too big a number"  
	| otherwise = loop (a+1) b c

ans = loop 0 0 0

main = putStrLn (show ans)