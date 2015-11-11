class Foo
  @@count_instances = 0

  class << self; attr_reader :count_instances end

  def initialize
    @@count_instances += 1 # @@count_instances = @@count_instances + 1
  end

  #def Foo.count_instances
  #  @@count_instances
  #end 
end

foo1 = Foo.new
foo2 = Foo.new

puts Foo.count_instances


