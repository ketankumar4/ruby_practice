class Array
  def power(p)
    self.map {|i| i**p}
  end
end
=begin
if ARGV.length<1
  puts "please provide input"
  exit
end
=end
x=ARGV[0]
p x
#puts x.delete "["
#x=x.delete "]"
p=ARGV[1].to_i
x=x.split(",").map {|n| n.to_i}
p x.power(p)
