{-
	A palindromic number reads the same both ways. The largest palindrome
	made from the product of two 2-digit numbers is 9009 = 91 × 99.

	Find the largest palindrome made from the product of two 3-digit numbers.
-}

-- Check if an int is a palindrome by converting it to a string
-- and comparing that string with it's reverse
isPalindrome n = x == reverse x
	where
		x = show n

-- Find a list of all possible combinations of x and y < 1000
-- and return the max
ans = maximum [a * b | a <- [0..999], b <- [0..999], isPalindrome (a * b)]

main = putStrLn (show ans)