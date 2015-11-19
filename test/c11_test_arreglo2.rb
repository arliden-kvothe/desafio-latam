require 'test/unit'
require_relative '../c11_arreglo2'
class TestArreglo2 < Test::Unit::TestCase
  def test_contar
    assert_equal 3, contar([5,7,1,3,9,0,2,1,7,8,1], 1)
  end
end