triangle :: Int -> [[Int]]
triangle top = tris [top]

tris :: [Int] -> [[Int]]
tris row = row : tris (next row)

next :: [Int] -> [Int]
next xs = [1] ++ zipWith (+) (zipWith (+) xs (tail xs)) (tail (tail xs)) ++ [1]
