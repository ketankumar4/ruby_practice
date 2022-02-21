# frozen_string_literal: true

class String
  def palindrome?
    str = downcase
    str = str.delete(' ')
    if str == str.reverse
      puts 'Input string is a palindrome'
    else
      puts 'Input string is not a palindrome'
    end
  end
end
if ARGV.empty?
  puts 'Please provide an input'
  exit
else
  str = ARGV[0]
  str.palindrome?
end
