# frozen_string_literal: true

a = %w[abc def abcd x mnop zZzZ]
x = {}
a.each_with_object(x) do |p, h|
  h[p.length] ||= []
  h[p.length] << p
end
# a.inject(x) {|h,p| h[p.length] << ||}

p x.sort.to_h
