lc=0
uc=0
nc=0
sc=0
str="heLLo Every1"
def is_number? string
  true if Float(string) rescue false
end
n=str.length
for i in 0..n-1
  if str[i].match?(/[a-z]/)
    lc=lc+1
  elsif  str[i].match?(/[A-Z]/)
    uc=uc+1
  elsif is_number?( str[i] )
    nc=nc+1
  else
    sc=sc+1
  end
end
puts lc
puts uc
puts nc
puts sc
