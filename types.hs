add :: (Int, Int) -> Int
add (x,y) = x + y

zeroto :: Int -> [Int]
zeroto n = [0..n]

-- Curried functions

add':: Int -> Int -> Int
add' x y = x + y

mult :: Int -> Int -> Int -> Int
mult x y z = x * y * z

-- Polymorphic functions

{-

Num - Numeric types
Eq - Equality types
Ord - Ordered types

-}

-- Exercise Types

{-

1) ['a', 'b', 'c'] -> [Char]
2) ('a', 'b', 'c') -> (Char, Char, Char)
3) [(False, '0'), (True, '1')] -> [(Bool, Char)]
4) ([False, True], ['0', '1']) -> ([Bool], [Char])
5) [tail, init, reverse] -> [[a] -> [a]]
6) second xs =  head (tail xs) -> [a] -> a
7) swap (x,y) = (y,x) -> (a,b) -> (b,a)
8) pair x y = (x,y) -> a -> b -> (a,b)
9) double x = x*2 -> Num a => a -> a
10) palindrome xs = reverse xs == xs -> Eq a => [a] -> Bool
11) twice f x = f (f x) -> (a -> a) -> a -> a
-}