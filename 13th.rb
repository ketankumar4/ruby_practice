def fac(n)
  x=1
  for i in 1..n
    x=x*i
  end
  return x
end
n=ARGV[0].to_i
puts fac(n)
