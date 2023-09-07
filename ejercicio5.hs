--Implementar la funcion 
--medioFact :: Integer ->Integer que dado n ∈ N
medioFact :: Integer -> Integer
medioFact x |x <= 0 = 1 
            |otherwise = x* medioFact(x-2)
