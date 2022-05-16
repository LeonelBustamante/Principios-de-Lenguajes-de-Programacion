main :: IO()
main  = putStrLn(tablita3(7,2)3)

tablita3 :: (Double, Double) -> Double -> String
tablita3 (j,k) m 
    | j < k || k < 2  = show(-1) -- Rango
    | j == k = show(sumatoria j m) -- CB
    | j > k =  show(j) ++" "++ tablita3 (j-1, k) m ++" "++ show(sumatoria j m)   -- PR


sumatoria :: Double -> Double -> Double
sumatoria l m | m <= 0 = -1
sumatoria l m = numerador/denominador
    where 
     numerador = (m*l-3)^3 + (-2*(l-m^2))
     denominador =  l^3-m+4

{-
tablita3 :: (Double, Double) -> Double -> Double
tablita3 (j,k) m 
    | j < k || k < 2  = -1 -- Rango
    | j == k = sumatoria j m -- CB
    | j > k =  tablita3 (j-1, k) m + sumatoria j m -- PR


sumatoria :: Double -> Double -> Double
sumatoria l m | m <= 0 = -1
sumatoria l m = numerador/denominador
    where 
     numerador = (m*l-3)^3 + (-2*(l-m^2))
     denominador =  l^3-m+4
-}