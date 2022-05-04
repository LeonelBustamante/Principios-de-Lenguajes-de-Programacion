main :: IO ()
main = putStrLn "Hello World!"

answer :: Int
answer = 42

newLine :: Char
newLine = '\n'

yes :: Bool
yes = True

greater :: Bool
greater = answer > 71

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
cuantosIguales x y z | (x == y) && (y == z)             = 3
                     | (x == y) || (y == z) || (x == z) = 2
                     | otherwise                        = 0

cuantosIgualesDeDos :: Int -> Int -> Int
cuantosIgualesDeDos x y | x == y    = 2
                        | otherwise = 0

{- Ejercicio 5 a-}
fibonacciPos10 :: Int
fibonacciPos10 = fib 10

{- Ejercicio 5 b -}
factorial :: Int -> Int
factorial n | n == 1    = 1
            | n < 1     = 1
            | otherwise = n * factorial (n - 1)

{- Ejercicio 5 c -}
sucesion :: Int -> Int -> Double
sucesion x n = sum / fact
 where
  sum  = fromIntegral (sumatoria n n)
  fact = fromIntegral (factorial x)

sumatoria :: Int -> Int -> Int
sumatoria i n | i < 1  = 0
              | i == 1 = 1
              | i > 1  = termino + (sumatoria (i - 1) n)
  where termino = i ^ n

{- Ejercicio 6 -}
nAnd :: Bool -> Bool -> Bool
nAnd a b = not a && not b

{- Ejercicio 8 -}
allDiferent :: Int -> Int -> Int -> Bool
allDiferent x y z = (x /= y) && (x /= z)

{- Ejercicio 9 -}
{- No esta bien por que x != z no se detecta -}
allDiferent2 :: Int -> Int -> Int -> Bool
allDiferent2 x y z = (x /= y) && (y /= z)

{- Ejercicio 10 -}
cuartaPotencia :: Int -> Int
cuartaPotencia x = square (square (x))

octavaPotencia :: Int -> Int
octavaPotencia x = square (square (square (x)))

{- Ejercicio 11 -}
{- 
(max (2+3) (-7))+(1-3)
     ¯¯¯¯
?? 2+3 = 5
(max 5 -7) + -2
¯¯¯¯¯¯¯¯¯
?? n > m = 5
5 + (-2) 
= 3
-}
{- 
cuantosIgualesDeDos 3 3
?? x == y = 2
2
-}
{- 
cuantosIguales 1 4 3
?? (1 == 4) && (4 == 3)= 3
?? False && False
?? (1 == 4)  (4 == 3)  (1 == 3) = 2
?? False  False  False
?? otherwise = 0
0
 -}
{- 
allForEqual 5 6 4 5
?? 5 == 6 && 6 == 4 && 4 == 5
?? False && False && False
-}

{- Ejercicio 12 -}
valorNumerico :: Char -> Int
valorNumerico x | fromEnum x < 58 && fromEnum x > 47 = fromEnum x
                | otherwise                          = -1

{- Ejercicio 13 -}
digitoRomano :: Char -> String
digitoRomano x = case x of
  '0' -> "0"
  '1' -> "I"
  '2' -> "II"
  '3' -> "III"
  '4' -> "IV"
  '5' -> "V"
  '6' -> "VI"
  '7' -> "VII"
  '8' -> "VIII"
  '9' -> "IX"

{- Ejercicio 14 -}
entreLineas :: String -> String -> String -> String
entreLineas x y z = x ++ "\n" ++ y ++ "\n" ++ z

{- Ejercicio 15 -}
duplicar :: String -> Int -> String
duplicar x n | n < 1     = ""
             | otherwise = x ++ duplicar x (n - 1)

{- Ejercicio 16 -}
hacerEspacios :: Int -> String
hacerEspacios x = duplicar " " x

{- Ejercicio 17 -}
factorialTable :: Int -> Int -> String
factorialTable n m
  | n == m    = show (factorial n) ++ " "
  | n < m     = factorialTable n (m - 1) ++ " " ++ show (factorial m)
  | otherwise = "N ES MAYOR A M"

{- Ejercicio 18 -}
justificarCentro :: Int -> String -> String
justificarCentro x st = hacerEspacios x ++ st ++ hacerEspacios x

justificarCentroWhere :: Int -> String -> String
justificarCentroWhere x st = espacio ++ cadena ++ espacio
 where
  espacio = hacerEspacios x
  cadena  = st

{- Ejercicio 19 NO ME QUEDO CLARO-}
-- 19. Definir una funci´on minMax la cual retorne el m´ınimo y el m´aximo de una tupla.

{- Ejercicio 20 -}
maxOcurr :: Int -> Int -> (Int,Int)
maxOcurr x y  | x==y = (x,2)
              | x>y = (x, 1)
              | otherwise = (y, 1)

{- 
maxOcurr :: Int -> Int -> Int -> (Int,Int)
maxOcurr x y z = case cuantosIguales x y z of
  3 -> (x,3)
  2 -> if x==y then (x,2) else if  x==z then (z,2) else (y,2)
  0 -> (mayor (mayor x y) z,1)
                
mayor :: Int -> Int -> Int
mayor x y |x>y = x
          |otherwise= y 
mayor :: Int -> Int -> Int -> Int
mayor x y z = (mayor (mayor x y) z)
-}


{- FORMATTER: https://hexagoxel.de/brittany/ -}
