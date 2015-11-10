{-
    The sum of the squares of the first ten natural numbers is,
    1^2 + 2^2 + ... + 10^2 = 385

    The square of the sum of the first ten natural numbers is,
    (1 + 2 + ... + 10)^2 = 552 = 3025

    Hence the difference between the sum of the squares of the
    first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

    Find the difference between the sum of the squares of the first
    one hundred natural numbers and the square of the sum.
-}

_squareSum n inc sum
    | inc <= n = _squareSum n (inc+1) (sum + inc^2)
    | otherwise = sum
squareSum n = _squareSum n 1 0

sumSquare n = (sum [1..n])^2

diff n = (sumSquare n) - (squareSum n)

ans = diff 100

main = putStrLn (show ans)