# frozen_string_literal: true

# k=ARGV[0]
# a=k.
a = %w[abc def abcd x mnop zZzZ]
x = {}
a.each_with_object(x) do |p, h|
  h[p.length] ||= []
  h[p.length] << p
end
# a.inject(x) {|h,p| h[p.length] << ||}
d = {}
# d={'odd' => [] ,'even' => []}
# x.inject(d) {|memo, (key,value)| }

x.each do |key, value|
  if key.odd?
    d['odd'] ||= []
    d['odd'].push(value)
  else
    d['even'] ||= []
    d['even'].push(value)
  end
end
p d
