--Especificar e implementar la funcion
-- esDivisible :: Integer ->Integer ->Bool que dados dos numeros
--naturales determinar si el primero es divisible por el segundo.
-- No esta permitido utilizar las funciones mod ni div.
esDivisible :: Integer -> Integer -> Bool
esDivisible dividendo divisor | dividendo  == 0 = True 
                              | dividendo < divisor = False
                              | otherwise = esDivisible (dividendo - divisor) divisor
