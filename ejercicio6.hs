--Especificar e implementar la funcion
-- sumaDigitos :: Integer ->Integer 
--que calcula la suma de digitos de
--un numero natural. Para esta funcion pueden 
--utilizar div y mod
sumaDigitos :: Integer -> Integer
sumaDigitos x | x < 10 = x
              | otherwise = mod x 10 + sumaDigitos(div x 10)
