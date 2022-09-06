double x = x + x
quadruple x  = double (double x)
factorial n = product[1..n]
average ns = sum ns `div` length ns

-- Common Functions:
 -- head [1,2,3,4,5,6,7,8,9] = 1
 -- tail[1,2,3,4,5,6,7,8,9] = [2,3,4,5,6,7,8,9]
 -- [1,2,3,4,5] !! 2( nth) => 3, Select nth element from the list
 -- take 3 [1,2,3,4,5,6,7,8,9] = [1,2,3] , Select the first n elements of the list
 -- drop 3 [1,2,3,4,5,6,7,8,9] = [4,5,6,7,8,9] , Drop the first n elements of the list
 -- length [1,2,3,4,5,6,7,8,9] = 9
 -- sum [1,2,3,4,5,6,7,8,9] = 45
 -- product [1,2,3,4,5,6,7,8,9] = 362880
 -- [1,2,3] ++ [4,5,6] = [1,2,3,4,5,6]
 -- reverse [1,2,3,4,5,6,7,8,9] = [9,8,7,6,5,4,3,2,1]
 -- init [1,2,3,4,5,6,7,8,9] = [1,2,3,4,5,6,7,8]