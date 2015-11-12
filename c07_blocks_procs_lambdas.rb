def mi_bloque()
    yield "respuesta"
end

def mi_bloque2()
    return "soy un bloque" # y no tengo yield
end

mi_bloque {|x| x }
