# frozen_string_literal: true

def isp(n)
  return false if n <= 1
  return true if n <= 3
  return false if n.even? || (n % 3).zero?

  i = 5
  while i * i <= n
    return false if (n % i).zero? || (n % (i + 2)).zero?

    i += 6
  end
  true
end
n = 7
(2..n).each do |j|
  puts "#{j} " if isp(j)
end
