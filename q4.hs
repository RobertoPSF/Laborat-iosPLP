main:: IO()
main = do
    x <- readLn:: IO Int
    y <- readLn:: IO Int
    print (matriz x y 1 y)


matriz:: Int -> Int -> Int -> Int -> [[Int]]
matriz 0 _ _ _ = []
matriz _ 0 _ _ = []
matriz a b c d = [[c..b]] ++ matriz (a-1) (b+d) (b+1) d
