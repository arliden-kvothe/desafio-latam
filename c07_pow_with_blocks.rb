class Array
  def sqrt_with_brakets
    i = 0
    new_array = []
    while i < self.size # en este punto del código
                        # self me representa el arreglo
                        # sobre el que voy a operar
      new_array << yield(self[i]) # se ejecuta el bloque 
                                  # y se guarda el valor
                                  # calculado en un nuevo
                                  # arreglo
      i+=1
    end
    new_array # la ultima linea en ruby se interpreta
              # como el valor que regresa el método
              # (la palabra return es implícita)
  end
end

a=[1,2,3,4]
b=a.sqrt_with_brakets { |n| n**2 }

puts b
¿Como usar la clase Proc para ejecutar el 
método sqrt_with_brakets?
Proc.new