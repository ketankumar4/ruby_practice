# frozen_string_literal: true

class Array
  def power(p)
    map { |i| i**p }
  end
end
# if ARGV.length<1
#   puts "please provide input"
#   exit
# end
x = ARGV[0]
p x
# puts x.delete "["
# x=x.delete "]"
p = ARGV[1].to_i
x = x.split(',').map(&:to_i)
p x.power(p)
