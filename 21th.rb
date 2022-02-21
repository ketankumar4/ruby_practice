def fac(n)
  x = 1
  if n<0
    raise MyError, "negative number entered"
  end
  #raise "hg" if n<0
  (1..n).each do |i|
    x *= i
  end
  return x
end

class MyError < StandardError
  #attr_reader :thing
  def initialize(msg="My default message")
    #@thing = thing
    super(msg)
  end
end


n = ARGV[0].to_i
puts fac(n)
