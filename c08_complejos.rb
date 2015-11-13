class Z

  attr_reader :a, :b
  # attr_writer :a, :b
  # attr_accessor :a, :b

  def initialize(a, b)
    if a.class != Fixnum or b.class != Fixnum
        raise ArgumentError, 'Argument is not complex or fixnum '        end 
    @a = a
    @b = b
  end


  def +(z)
    if z.class == Fixnum
      Z.new(@a + z, @b)
    else
      Z.new(@a + z.a, @b + z.b)
    end
  end

  def to_s
    return "#{@a} + #{@b}i"
  end
end

es_valido = false
while es_valido == false
  begin   # se declara el bloque de manejo de excepcion
    print 'ingresa el valor real:'
    r = Float(gets.chomp)
    print 'ingresa el valor complejo:'
    c = Float(gets.chomp)
    complejo1=Z.new(r.to_i, c.to_i) # lanzo el error
    raise NameError, "forzando a entrar al else del bloque de  manejo de excepcion"
    es_valido = true
  rescue ArgumentError # le indico al interprete como
                      # manipular el error
    puts "Los valores no son correctos, ingresa de nuevo los valores" # creo un complejo correcto
  else # cacha el resto de los errores
    puts "estas bien chavo!" + $!
  end
end

puts "he creado un numero complejo #{complejo1}"






