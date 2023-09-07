--Ejercicio 9. Especicar e implementar una función 
--esCapicua :: Integer ->Bool que dado n ∈ N ≥0 determina si n es
--un número capicúa.

cantidadDeDigitos:: Integer -> Integer
cantidadDeDigitos x| x < 10 = 1 
                   | otherwise = 1 + cantidadDeDigitos (div x 10)

invertirNumero :: Integer -> Integer
invertirNumero x | x< 10  = x 
                 |otherwise = (mod x 10) * 10^(cantidadDeDigitos (x)-1) + invertirNumero (div x 10)      

esCapicua :: Integer -> Bool
esCapicua x |  x - invertirNumero(x) == 0 = True
            | otherwise = False
