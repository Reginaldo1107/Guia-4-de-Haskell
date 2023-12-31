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


--c) Implementar la funcion 
--sonCoprimos :: Integer ->Integer ->Bool 
--que dados dos numeros naturales indica si no
--tienen algun divisor en comun mayor estricto que 1.
sonCoprimos :: Integer ->Integer -> Bool
sonCoprimos x y |  y == 1 = True
                | mod x (menorDivisor y) == 0 = False 
                | otherwise = sonCoprimos x (div y (menorDivisor y))



--d)Implementar la funcion 
--nEsimoPrimo :: Integer ->Integer 
--que devuelve el n-esimo primo (n ≥ 1). Recordar que el
--primer primo es el 2, el segundo es el 3, el tercero es el 5, etc


