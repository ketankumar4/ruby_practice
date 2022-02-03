#k=ARGV[0]
#a=k.
a=['abc','def','abcd','x','mnop','zZzZ']
x=Hash.new
a.inject(x) {|h,p| h[p.length] ||= []; h[p.length] << p;h}
#a.inject(x) {|h,p| h[p.length] << ||}
d=Hash.new
#d={'odd' => [] ,'even' => []}
#x.inject(d) {|memo, (key,value)| }


x.each do |key,value|
  if key % 2 != 0
    d['odd'] ||= []
    d['odd'].push(value)
  else
    d['even'] ||= []
    d['even'].push(value)
  end
end
p d
