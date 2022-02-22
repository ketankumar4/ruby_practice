# frozen_string_literal: true

class Name
  attr_accessor :firstname, :lastname

  def initialize(fn, ln)
    @firstname = fn
    @lastname = ln
    raise MyError, 'fn cant be downcase' if fn[0].match(/[a-z]/)
    raise MyError, 'fn cant be blank' if fn == ''
    raise MyError, 'ln cant be blank' if ln == ''

    puts @firstname.to_s
    puts @lastname.to_s
  end
  # if @fn[0].downcase?
  #  raise MyError, "fn cant be downcase"
  #  end
end

class MyError < StandardError
  # attr_reader :thing
  def initialize(msg = 'My default message')
    # @thing = thing
    super(msg)
  end
end
s = Name.new('Ketan', 'kumar')
