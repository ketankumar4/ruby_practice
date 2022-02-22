# frozen_string_literal: true

lc = 0
uc = 0
nc = 0
sc = 0
str = 'heLLo Every1'
def is_number?(string)
  true if Float(string)
rescue StandardError
  false
end
n = str.length
(0..n - 1).each do |i|
  if str[i].match?(/[a..z]/)
    lc += 1
  elsif  str[i].match?(/[A..Z]/)
    uc += 1
  elsif is_number?(str[i])
    nc += 1
  else
    sc += 1
  end
end
puts lc
puts uc
puts nc
puts sc
