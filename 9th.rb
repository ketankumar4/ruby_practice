a=['abc','def','abcd','x','mnop','zZzZ']
x=Hash.new
a.inject(x) {|h,p| h[p.length] ||= []; h[p.length] << p;h}
#a.inject(x) {|h,p| h[p.length] << ||}

p x.sort.to_h
