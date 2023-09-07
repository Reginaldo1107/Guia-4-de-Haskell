--Especificar e implementar la funcion 
--sumaImpares :: Integer ->Integer que dado n ∈ N sume los primeros n
-- numeros impares. Por ejemplo: sumaImpares 3
sumaImpares :: Integer ->Integer
sumaImpares x | x == 0 = 0
              |otherwise =  2*x -1 + sumaImpares(x -1)
