Transformação de hora--
import Text.Printf

main:: IO()
main = do
    num <- readLn:: IO Float
    t1 <- getLine
    t2 <- getLine
    calcula num t1 t2
    
        
calcula:: Float -> String -> String -> IO()
calcula x t1 t2
    | t1 == "HORA" && t2 == "MINUTO" = escreve x t1 t2 hora_minuto
    | t1 == "HORA" && t2 == "SEGUNDO" = escreve x t1 t2 hora_segundo
    | t1 == "MINUTO" && t2 == "HORA" = escreve x t1 t2 minuto_hora
    | t1 == "MINUTO" && t2 == "SEGUNDO" = escreve x t1 t2 minuto_segundo
    | t1 == "SEGUNDO" && t2 == "HORA" = escreve x t1 t2 segundo_hora
    | t1 == "SEGUNDO" && t2 == "MINUTO" = escreve x t1 t2 segundo_minuto
    | otherwise = print "Voce digitou algo errado"
    where
        hora_minuto = x * 60
        hora_segundo = x * 3600
        minuto_hora = x / 60
        minuto_segundo = x * 60
        segundo_hora = x / 3600
        segundo_minuto = x / 60

escreve:: Float -> String -> String -> Float -> IO()
escreve x t1 t2 hora_transformada = printf "%1f %s(S) e igual a %1f %s(S)" x t1 hora_transformada t2