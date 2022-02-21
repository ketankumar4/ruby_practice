# frozen_string_literal: true

def fac(n)
  x = 1
  (1..n).each do |i|
    x *= i
  end
  x
end
n = ARGV[0].to_i
puts fac(n)
