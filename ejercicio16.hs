--Ejercicio 16 a
--Recordemos que un entero p > 1 es primo (si y solo si) no existe
-- un entero k tal que 1 < k < p y k divida a p.
-- (a) Implementar
-- menorDivisor :: Integer ->Integer que calcule el menor 
--divisor (mayor que 1) de un natural n pasado
--como parametro.

buscoMenorConsecutivo :: Integer -> Integer -> Integer
buscoMenorConsecutivo n m |mod n m == 0 = m
                          |otherwise = buscoMenorConsecutivo n (m+1)

menorDivisor:: Integer ->Integer
menorDivisor x = buscoMenorConsecutivo x 2 
 
 --(b) Implementar la funcion 
-- esPrimo :: Integer ->Bool  que indica si un numero 
--natural pasado como parametro es primo
buscoPrimoConsecutivo :: Integer -> Integer -> Bool
buscoPrimoConsecutivo x y | x == y = True 
                          |mod x y == 0 = False 
                          | otherwise = buscoPrimoConsecutivo x (y+1)
esPrimo :: Integer ->Bool
esPrimo x =  buscoPrimoConsecutivo x 2


