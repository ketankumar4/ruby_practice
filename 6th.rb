class Vehicle
  attr_accessor :name, :price
  #def initialize(name,price)
  #  @name=name
  #  @price=price
  #end
  #def price=(new_price)
  #  @price=new_price
  #end
  def to_s
    puts "bike name: #{@name}"
    puts "bike price: #{@price}"
    puts "bike dealer: #{@dealer}"
    puts
    puts "After #{@percennt_price_increase} percent hike in price"
    puts "bike name: #{@name}"
    puts "bike price: #{@new_price}"
    puts "bike dealer: #{@dealer}"
    exit
  end
end
class Bike < Vehicle
  attr_accessor :dealer, :percennt_price_increase
  def initialize(name,price,dealer,percennt_price_increase)
    @name=name
    @price=price
    @dealer=dealer
    @percennt_price_increase=Float(percennt_price_increase)
    price_increase(percennt_price_increase)
  end
  def price_increase(percennt_price_increase)
    @new_price=Float(@price*(100+percennt_price_increase))
  end
end
if ARGV.length<1
  puts "Please provide an input"
  exit
else
  name=ARGV[0]
  price=ARGV[1].to_i
  dealer=ARGV[2]
  inc=ARGV[3].to_i
  bike=Bike.new(name,price,dealer,inc)
  puts bike
end
#bike=Bike.new("Hero Honda",65000,"Koncept Automobiles",25)
#puts bike
