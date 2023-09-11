--Ejercicio 13 : Especificar la siguiente funcion 
-- f(n,m) = sum i = 1 al n   sum j = 1 al m del i ^ j
sumatoriaDePotencia ::Int -> Int -> Int
sumatoriaDePotencia n m | m == 0 = 0
                        |otherwise = n^m + sumatoriaDePotencia n (m-1)

sumatoriaDoble :: Int -> Int -> Int
sumatoriaDoble n m  | n == 0 = 0 
                    | otherwise = sumatoriaDePotencia n m + sumatoriaDoble (n-1) m
