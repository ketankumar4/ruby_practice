# frozen_string_literal: true

def reverse(array)
  rev = []
  rev << array.pop until array.empty?
  p rev
end
reverse([2, 3, 4])
