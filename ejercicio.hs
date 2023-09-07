PERO LO HICE PONIENDO TODOS FLOAT 
factorial :: Integer -> Float
factorial x | x == 1 = 1.0
            |otherwise =  x * factorial (x -1)

eAprox :: Float -> Float
eAprox x | x == 0  = 1 
         |otherwise = 1.0/factorial x + eAprox (x-1)
