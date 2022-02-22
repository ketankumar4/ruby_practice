# frozen_string_literal: true

def fib
  x = 0
  y = 1
  loop do
    yield y
    x, y = y, x + y
    # y=x+y
  end
end
puts "give input"
n = gets.chomp
if n.length()<1
  puts "please provide input"
end
n=n.to_i
# it will stop calling fib
fib do |x|
  break if x >= n
  print "#{x} "
end
