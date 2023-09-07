--Implementar la funcion 
 --iesimoDigito :: Integer ->Integer ->Integer que dado un n ∈ N≥0 
 --y un i ∈ N menor o igual a la cantidad de digitos de n, devuelve
 --el i-esimo digito de n.
cantidadDeCifras :: Integer -> Integer
cantidadDeCifras x |x < 10 = 1
                   |otherwise = 1 + cantidadDeCifras(div x 10)

iesimoDigito :: Integer ->Integer ->Integer
iesimoDigito numero i | cantidadDeCifras numero  == i  = mod numero 10
                      | otherwise = iesimoDigito (div numero 10)   (i)
