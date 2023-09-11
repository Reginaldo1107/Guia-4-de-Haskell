--Ejercicio 12 :
-- Para n ∈ N se define la sucesion:
-- Lo cual resulta en la siguiente definicion 
--recursiva: a1 = 2, an = 2 + 1/(an - 1)
 --  Utilizando esta sucesion, especicar e implementar
--una funcion raizDe2Aprox :: Integer ->Float que dado 
--n ∈ N devuelva la aproximacion de 
-- √2 denida por √2 ≈ an −1.
--Por ejemplo:
--raizDe2Aprox 1-> 1
--raizDe2Aprox 2-> 1,5
--raizDe2Aprox 3-> 1,4
asubn :: Int -> Float
asubn x |x == 1 = 2  
        |otherwise = 2 + 1/ asubn ( x-1 )
            
raizDe2Aprox :: Integer ->Float
raizDe2Aprox x = asubn(fromIntegral x) - 1
