# frozen_string_literal: true

def fac(n)
  x = 1
  raise MyError, 'negative number entered' if n.negative?

  # raise "hg" if n<0
  (1..n).each do |i|
    x *= i
  end
  x
end

class MyError < StandardError
  # attr_reader :thing
  def initialize(msg = 'My default message')
    # @thing = thing
    super(msg)
  end
end

n = ARGV[0].to_i
puts fac(n)
