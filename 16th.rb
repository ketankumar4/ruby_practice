# frozen_string_literal: true

str = 'String Counting Ing mknING'
t = 'ing'
x = 'Ing'
y = 'ING'
s = str.gsub(/#{t}/, "(#{t})")
k = s.gsub(/#{x}/, "(#{x})")
l = k.gsub(/#{y}/, "(#{y})")
puts l
puts l.count('(')
