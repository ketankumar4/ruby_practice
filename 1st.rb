# frozen_string_literal: true

def func(str)
  x = Hash.new(0)
  str.split('').each do |i|
    x[i] = x[i] + 1 if i.match?(/[A-Za-z]/)
  end
  puts x
end
puts 'give input'
str = gets.chomp
puts 'please provide input' if str.empty?
func(str)
