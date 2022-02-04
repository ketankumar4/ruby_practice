def fact(m)
  t=1
  for i in 1..m
    t=t*i
  end
  return t
end
def pas(n)
  for j in 0..n
    yield(fact(n)/(fact(j)*fact(n-j)))
  end
end
=begin
def pas(n)
  for i in 0..n
    for j in 0..n
      yield(fact(n)/(fact(j)*fact(n-j)))
    end
    puts
  end
end
=end
puts "enter num"
num=gets.chomp().to_i
(0..num).each {|n| pas(n) {|x| print "#{x} "}; print "\n"}
