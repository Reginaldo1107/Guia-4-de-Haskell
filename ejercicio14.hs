
--Ejercicio 14
--Especificar e implementar una funcion
--sumaPotencias :: Integer ->Integer ->Integer ->Integer
-- que dados tres naturales q, n, m sumabv  todas las 
--potencias de la forma q^a+b con 1 ≤ a ≤ n y 1 ≤ b ≤ m.
sumaPotenciaInterna::Integer->Integer->Integer->Integer 
sumaPotenciaInterna q n m | m == 0  = 0 
                          |otherwise = q^(n + m) + sumaPotenciaInterna q n (m -1) 
                

sumaPotencias :: Integer ->Integer ->Integer ->Integer
sumaPotencias q n m | n == 0 = 0 
                    |otherwise = sumaPotenciaInterna q n m + sumaPotencias q (n - 1) m 


