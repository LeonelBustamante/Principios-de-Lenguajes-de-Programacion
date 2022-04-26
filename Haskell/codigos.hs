<<<<<<< HEAD
=======
{- FORMATTER: https://hexagoxel.de/brittany/ -}
>>>>>>> 3cdfcf8d6177bb73815bf4c27a306b7ded3796d8
main :: IO ()
main = putStrLn "Hello World!"

answer :: Int
answer = 42

newLine :: Char
newLine = '\n'

yes :: Bool
yes = True

greater :: Bool
greater = (answer > 71)

square :: Int -> Int
square x = x * x

allEqual :: Int -> Int -> Int -> Bool
allEqual n m p = (n == m) && (m == p)

maxi :: Int -> Int -> Int
maxi n m | n > m     = n
         | otherwise = m

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n | n > 1     = fib (n - 2) + fib (n - 1)
      | otherwise = 0

{- Ejercicio 2 -}
losCuatroIguales :: Int -> Int -> Int -> Int -> Bool
losCuatroIguales x y z w = x == y && y == z && z == w

{- Ejercicio 3 -}
losCuatroIguales2 :: Int -> Int -> Int -> Int -> Bool
losCuatroIguales2 x y z w = allEqual x y z && x == w

{- Ejercicio 4 -}
cuantosIguales :: Int -> Int -> Int -> Int
<<<<<<< HEAD
cuantosIguales x y z | (x == y) && (y == z)             = 3
                     | (x == y) || (y == z) || (x == z) = 2
                     | otherwise                        = 0
=======
cuantosIguales x y z | (x == y) && (y == z)       = 3
                     | (x == y) (y == z) (x == z) = 2
                     | otherwise                  = 0
>>>>>>> 3cdfcf8d6177bb73815bf4c27a306b7ded3796d8

cuantosIgualesDeDos :: Int -> Int -> Int
cuantosIgualesDeDos x y | x == y    = 2
                        | otherwise = 0

{- Ejercicio 5 -}
fibonacciPos10 :: Int
fibonacciPos10 = fib 10

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

<<<<<<< HEAD
nAnd :: Bool -> Bool -> Bool
nAnd a b = not(a == True && b == True)

allDiferent :: Int -> Int -> Int -> Bool
allDiferent x y z = (x /= y) &&  (x /= z)

{- No esta bien por que x != z no se detecta -}
allDiferent2 :: Int -> Int -> Int -> Bool
allDiferent2 x y z = (x /= y) &&  (y /= z)

cuartaPotencia :: Int -> Int
cuartaPotencia x = square(square(x)) 

octavaPotencia :: Int -> Int
octavaPotencia x = square(square(square(x))) 

{- 
(max (2+3) (-7))+(1-3)
     ¯¯¯¯
?? 2+3 = 5
(max 5 -7) + -2
¯¯¯¯¯¯¯¯¯
?? n > m = 5
5 + 2 
= 3
-}

{- 
cuantosIgualesDeDos 3 3
-}
=======
{- NO ME SALIO LA SUCESION-}

nAnd :: Bool -> Bool -> Bool
nAnd a b = not (a == True && b == True)

sumatoria :: [Int] -> Int
sumatoria [] = 0
sumatoria (x : xs) | xs == [x] = x
                   | otherwise = x + sumatoria xs
>>>>>>> 3cdfcf8d6177bb73815bf4c27a306b7ded3796d8
