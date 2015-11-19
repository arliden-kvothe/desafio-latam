require 'test/unit'
require_relative 'c11_hipotenusa'
class TestHipotenusa < Test::Unit::TestCase #Hereda de la clase test
  def test_resultado_pitagorico # Cada método es un test
  # cada método debe incluir un assert
    assert_equal 5, hipotenusa(3,4), "Suma Positivos Funciona"
  end
end