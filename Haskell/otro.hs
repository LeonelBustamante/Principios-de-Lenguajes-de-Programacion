sucesion :: Int -> Int -> Double
sucesion x n = sum / fact
 where
  sum = fromIntegral(sumatoria n n)
  fact = fromIntegral(factorial x)

sumatoria :: Int -> Int -> Int
sumatoria i n
 | i < 1 = 0
 | i == 1 = 1
 | i > 1 = termino + (sumatoria (i-1) n)
 where
  termino = i^n
{- ** Float o Double -}

factorial :: Int -> Int
factorial n
 | n == 1 = 1
 | n < 1 = 1
 | otherwise = n * factorial (n-1)
