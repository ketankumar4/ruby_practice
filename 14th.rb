# frozen_string_literal: true

A = 'hello world'
s = ''
t = ''
n = A.length - 1
while n >= 0
  if A[n] == ' '
    if t != ''
      t = t.reverse
      s.concat(t)
      s.concat(' ')
      # s+=t+" "
      # n=n-1
    end
    t = ''
  else
    t.concat(A[n])
    # t+=A[n]
  end
  n -= 1
end
t = t.reverse
s.concat(t)
# s+=t
s[0, s.length - 1] if s[s.length - 1] == ' '
puts s
