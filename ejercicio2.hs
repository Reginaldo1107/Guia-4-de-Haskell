--ejercicio 2 
--Implementar una funcion 
--parteEntera :: Float ->Integer 
--segun la siguiente especificacion
parteEntera :: Float ->Integer 
parteEntera x | x < 1 && x >= 0 = 0
              |x>0  = 1 + parteEntera (x-1)
              |x<0  = -1 + parteEntera (x+1)            
            --  | x>=(-1) && x> 0 = 0
