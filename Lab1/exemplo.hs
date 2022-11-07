retorna o dobro de um número--
dobro:: Int -> Int
dobro x = 2 * x

main:: IO()
main = do
    num <- readLn :: IO Int
    print (dobro num)
