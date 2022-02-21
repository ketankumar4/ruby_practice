A="hello world"
s=""
t=""
n=A.length-1
while n>=0
  if A[n]==' '
    if t!=""
      t=t.reverse
      s.concat(t)
      s.concat(" ")
      #s+=t+" "
      #n=n-1
    end
    t=""
    n=n-1
  else
    t.concat(A[n])
    #t+=A[n]
    n=n-1
  end
end
t=t.reverse
s.concat(t)
#s+=t
if s[s.length-1]==' '
  s[0, s.length-1]
end
puts s
