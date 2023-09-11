--Ejercicio 15. Especificar e implementar una funcion --sumaRacionales :: Integer ->Integer ->Float 
--que dados dos naturales n, m sume todos los numeros racionales de la forma p/q 
-- con 1 ≤ p ≤ n y 1 ≤ q ≤ m, es decir:
sumaInternaRacional:: Integer -> Integer -> Float
sumaInternaRacional n m |m == 0 = 0
                        |otherwise = sumaInternaRacional n (m-1)+ (fromIntegral (n)/fromIntegral (m))


sumaRacionales:: Integer -> Integer -> Float
sumaRacionales n m |n == 0 = 0 
                   |otherwise = sumaInternaRacional n m + sumaRacionales (n - 1) m  
