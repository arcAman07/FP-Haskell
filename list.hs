{-# OPTIONS_GHC -Wno-deferred-out-of-scope-variables #-}

concat :: [[a]] -> [a]
concat xss = [x | xs <- xss, x <- xs]

getEven ::Integral a =>[a] -> [a]
getEven xs = [x | x <- xs, even x]

factors :: Integral a => a -> [a]
factors x = [y | y <- [1..x], x `mod` y == 0]

prime :: Int -> Bool
prime x = factors x == [1,x]

primes :: Int -> [Int]
primes n = [x | x <- [2..n], prime x]

pairs :: [a] -> [(a,a)]
pairs xs = zip xs (tail xs)

sorted :: Ord a => [a] -> Bool
sorted xs = and [x <= y | (x,y) <- pairs xs]

positions :: Eq a => a -> [a] -> [Int]
positions x xs = [i | (x',i) <- zip xs [0..length xs-1], x' == x]

count :: Char -> String -> Int
count x xs = length[x' | x' <- xs, x == x']

-- EXERCISES

pythagoras :: Int -> [(Int,Int,Int)]
pythagoras x = [(a, b, x) | a <- [1 .. x], b <- [1 .. x], a ^ 2 + b ^ 2 == x ^ 2]

perfects :: Int -> [Int]
perfects x = [y | y <- [1 .. x], sum (factors y) - y == y]

scalarproduct :: [Int] -> [Int] -> Int
scalarproduct xs ys = sum [x * y | (x, y) <- zip xs ys]