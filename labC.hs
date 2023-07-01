import Data.Char
-- Haskell Lab C
-- Partners: Nick Satriano and Sara Micciulli


-- Problem 12: Higher Order (calling map)
convert2Int :: [Char] -> Int
convert2Int ('0':tail) = (convert2Int tail)
convert2Int ls = foldl convertHelper 0 (map digitToInt ls)

convertHelper :: Int -> Int -> Int
convertHelper x y = 10*x + y



-- Problem 12: Part 2
convertHex2Int :: [Char] -> Int
convertHex2Int ('0':tail) = (convertHex2Int tail)
convertHex2Int ('x':tail) = (convertHex2Int tail)
convertHex2Int ls = foldl convertHexHelper 0 (map digitToInt ls)

convertHexHelper :: Int -> Int -> Int
convertHexHelper x y = 16*x + y




-- Problem 14: Higher Order (use as needed)
stdev :: [Float] -> Float
stdev [] = error "no data points"
stdev ls = sqrt ((foldl (+) 0 (squares ls))/(fromIntegral(length ls)))
squares :: [Float] -> [Float]
squares ls = ( map (^2) (map ((-) mean) ls) )
    where mean = (foldl (+) 0 ls)/(fromIntegral(length ls))

--Problem 15
insert :: Ord a => [a] -> a -> [a]
insert [] n = [n]
insert ls n = [x|x<-ls, x<n]++ [n] ++ [x|x<-ls, x>=n]
myMap :: (a -> b) -> [a] -> [b] 

myMap func ls = [(func x)| x <- ls]
factors :: Int -> [Int]
factors n = [x|x<-(primes n), n `mod` x == 0]

-- Implementation based on literateprograms.org primes :: Int -> [Int]
primes n = sieve [2..n]
    where
        sieve [] = []
        sieve (p:xs) = p : sieve [x|x <- xs, x `mod` p > 0]

