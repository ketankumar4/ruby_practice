# frozen_string_literal: true

class String
  def to_s
    swapcase
  end
end
puts 'give input'
str = gets.chomp
puts 'please provide input' if str.empty?
puts str.to_s
