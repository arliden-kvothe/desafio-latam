def test_proc
  Proc.new { return "we just return from the block"}.call
  return "returning from the method"
end

def test_lambda
  lambda { return "we just return from the block"}.call
  return "returning from the method"
end

puts test_proc
puts test_lambda