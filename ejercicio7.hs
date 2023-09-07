--Implementar la funcion 
--todosDigitosIguales :: Integer ->Bool 
--que determina si todos los dıgitos de un
--numero natural son iguales, es decir:
todosDigitosIguales :: Integer -> Bool
todosDigitosIguales x | x < 10 = True -- ultimo        -- anteultimo
                      |mod x 10 /= mod (div x 10) 10 = False 
                      |otherwise = todosDigitosIguales (div x 10) 
