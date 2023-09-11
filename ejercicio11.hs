
factorial :: Float -> Float
factorial x | x == 1 = 1.0
            |otherwise =  x * factorial (x -1)

eAprox :: Int -> Float
eAprox x | x == 0  = 1
         |otherwise = 1/factorial (fromIntegral x ) + eAprox (x-1)
