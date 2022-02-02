def func(str)
  n=str.length
  i=0
  while i<n
    if str[i].match?(/[aeiouAEIOU]/)
      str[i]="*"
    end
    i=i+1
  end
  puts str
end
str=gets.chomp()
func(str)
