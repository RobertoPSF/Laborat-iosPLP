soma dos numeros primos até um determinado numero--
import Text.Printf

main:: IO()
main = do
    num <- readLn:: IO Int
    soma num 0 0
    
soma:: Int -> Int -> Int -> IO()
soma x cont guarda = do
    y <- readLn:: IO Int
    if y > 0 then
        if (multiplo x y) then
        soma x (cont + 1) (guarda + y)
        else soma x cont guarda
    else printf "Soma: %d\nQtd no somados: %d" guarda cont
    
    
    
multiplo:: Int -> Int -> Bool
multiplo num1 num2 = num2 `mod` num1 == 0