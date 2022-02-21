# frozen_string_literal: true

def fact(m)
  t = 1
  (1..m).each do |i|
    t *= i
  end
  t
end

def pas(n)
  (0..n).each do |j|
    yield(fact(n) / (fact(j) * fact(n - j)))
  end
end
# def pas(n)
#   for i in 0..n
#     for j in 0..n
#       yield(fact(n)/(fact(j)*fact(n-j)))
#     end
#     puts
#   end
# end
puts 'enter num'
num = gets.chomp.to_i
(0..num).each do |n|
  pas(n) { |x| print "#{x} " }
  print "\n"
end
