def func(str)
  x=Hash.new(0)
  str.split("").each do |i|
    if i.match?(/[A-Za-z]/)
      x[i]=x[i]+1
    end
  end
  puts x;
end
str = gets.chomp()
func(str)
