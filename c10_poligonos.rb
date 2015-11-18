class Poligono
  attr_accessor :lados
  def initialize
    puts "#{lados}"
  end

  def calc_perimetro
  end

  def calc_area
  end

  private :calc_area
  protected :calc_perimetro

  def muestra_perimetro
    puts "#Perimetro del #{self.class}: #{self.calc_perimetro}"
  end

  def muestra_area
    puts "#Area del #{self.class}: #{self.calc_area}"
  end
end

class Circulo < Poligono

  def initialize(radio)
    @radio=radio
  end
  def calc_perimetro
    Math::PI * 2 * @radio
  end
end

class Triangulo < Poligono
  def initialize(lado1, lado2, lado3)
    @lado1=lado1
    @lado2=lado2
    @lado3=lado3
  end
  def calc_perimetro
    @lado1 + @lado2 + @lado3
  end
end

class Cuadrado < Poligono
  def initialize(a)
    @a=a
  end
  def calc_perimetro
    4 * @a
  end

  def calc_area
    @a**2
  end
end

c1=Circulo.new(3)
c1.muestra_perimetro

t1=Triangulo.new(3,4,5)
t1.muestra_perimetro

cu1=Cuadrado.new(5)
cu1.muestra_perimetro
cu1.muestra_area

