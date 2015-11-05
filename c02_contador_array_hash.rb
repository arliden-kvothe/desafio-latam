a = [1,1,3,4,4,9,1,2,5,9]

counter={}

a.each_with_index { |value,index|
  if counter[value] == nil
    counter[value] = 0
  end

  counter[value] = counter[value] + 1
}

print a
print "\n"
print counter