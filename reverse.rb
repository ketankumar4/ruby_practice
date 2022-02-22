# frozen_string_literal: true

class Array
  def reverse_iterate
    yield self.pop until self.empty?
  end
end
# def reverse(array)
#   rev = []
#   rev << array.pop until array.empty?
#   p rev
# end
# reverse([2, 3, 4])
[2,4,6,8].reverse_iterate { |i| print "#{i} "}
