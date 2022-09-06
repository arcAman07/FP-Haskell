{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
{-# LANGUAGE ScopedTypeVariables #-}
abs :: Int -> Int
abs n = if n >= 0 then n else -n

signum :: Int -> Int
signum n
  | n < 0 = -1
  | n == 0 = 0
  | otherwise = 1

not :: Bool -> Bool
not True = False
not False = True

(&&) :: Bool -> Bool -> Bool
True && True = True
_ && _ = False

(||) :: Bool -> Bool -> Bool
False || False = False
_ || _ = True

head :: [a] -> a
head (x: _) = x

tail :: [a] -> [a]
tail (_:xs) = xs

-- Lambda expressions

-- odds n = map f[0..n-1]
--          where 
--   f x = x*2 + 1

odds n = map (\x -> x*2 + 1) [0..n-1]

-- 1)

safetail :: [a] -> [a]
safetail xs = if null xs then [] else Main.tail xs



