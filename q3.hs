import Text.Printf

main:: IO()
main= do
    lista <- getLine
    printf "%d" (length (words lista))
