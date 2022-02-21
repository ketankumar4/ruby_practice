# frozen_string_literal: true

def func(str)
  n = str.length
  i = 0
  while i < n
    str[i] = '*' if str[i].match?(/[aeiouAEIOU]/)
    i += 1
  end
  puts str
end
puts 'give input'
str = gets.chomp
puts 'please provide input' if str.empty?
func(str)
