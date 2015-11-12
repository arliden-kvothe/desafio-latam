class Array 
  def mi_each
    i = 0
    while i < self.size
        yield (self[i]*self[i])
        i+=1      
    end
    self
  end

  def cuadrados_con_bloque_llaves(&bloque)
    yield
  end

  def cuadrados_con_proc(bloque, bloque2, bloque3)
    bloque.call("algun valor")
    bloque2.call("otro valor")
    bloque3.call(3)
  end
end

proc =  Proc.new { |x| puts x }
a = [1,2,3,4]
a = a.mi_each(&proc)

c=[-1,0,4,5]
c=c.mi_each(&proc)

proc.call(5,6,7,8)


p = Proc.new {|a, b| 
  puts a**2+b**2
  puts "finaliza bloque"

}
l = lambda {|a, b| puts a**2+b**2 }

p.call 1, 2 # => 5
#p.call 1 # => NoMethodError: undefined method `**' for nil:NilClass
p.call 1, 2, 3 # => 5

l.call 1, 2 # => 5
#l.call 1 # => ArgumentError: wrong number of arguments (1 for 2)
#l.call 1, 2, 3 # => ArgumentError: wrong number of arguments (3 for


def lambda_test
  lam = lambda { return }
  lam.call
  puts "termino la ejecucion"
end

def proc_test
  proc2 = Proc.new { |x| return }
  proc2.call
  puts "termino la ejecucion?"  
end

lambda_test()
proc_test()





