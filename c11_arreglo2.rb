def contar(a, valor)
    counter=0
    a.each { |v|
        counter += 1 if v == valor
    }
    counter
end