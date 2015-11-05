def collatz(n)
  print "#{n} "
  if n > 1
    if n % 2 != 0
      collatz(3*n + 1)
    else
      collatz(n/2)
    end
  end
end

num=gets.chomp.to_i
collatz(num)