--Ejercicio 1 
--Implementar la funcion 
--fibonacci:: Integer ->Integer que devuelve
-- el i-esimo n´umero de Fibonacci.
fibonacci :: Integer -> Integer 
fibonacci n | n == 0 = 0 
            | n == 1 = 1
            | otherwise = fibonacci (n - 1) + fibonacci (n -2)
