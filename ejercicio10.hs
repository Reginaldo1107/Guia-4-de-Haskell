--a) f1(x)
f1 :: Integer -> Integer
f1 x | x == 0  = 1
     |otherwise = 2^(x) + f1 (x-1)
 
--b) f2(x)
f2 :: Integer -> Integer -> Integer
f2 n  q| n == 1  = q
       |otherwise = q^(n) + f2 (n-1) q
--c) f3(n, q)

duplicar :: Integer -> Integer
duplicar x = 2*x

f3 :: Integer -> Integer -> Integer
f3  n q = f2 (duplicar n) q 

--d) f4 (n,q)
f4 :: Integer -> Integer -> Integer
f4 n q = (f3 n q ) - f2 (n-1) q
    
