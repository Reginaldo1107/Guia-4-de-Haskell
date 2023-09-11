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
 
