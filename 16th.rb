# frozen_string_literal: true

str = 'String Counting'
t = 'ing'
s = str.gsub(/#{t}/, "(#{t})")
puts s
puts s.count('(')
