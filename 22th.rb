class Name
  attr_accessor :fn, :ln
  def initialize(fn,ln)
    @fn=fn
    @ln=ln
    if fn[0].match(/[a-z]/)
      raise MyError, "fn cant be downcase"
    end
    if fn==""
      raise MyError, "fn cant be blank"
    end
    if ln==""
      raise MyError, "ln cant be blank"
    end
    puts "#{@fn}"
    puts "#{@ln}"
  end
  #if @fn[0].downcase?
  #  raise MyError, "fn cant be downcase"
#  end
end
class MyError < StandardError
  #attr_reader :thing
  def initialize(msg="My default message")
    #@thing = thing
    super(msg)
  end
end
s=Name.new('Ketan','kumar')
