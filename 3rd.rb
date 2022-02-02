def fib
  x=0
  y=1
  while 1
    yield y
    x,y=y,x+y
    #y=x+y
  end
end
n=gets.chomp.to_i
fib { |x| break if x >= n; puts x } #it will stop calling fib
