# frozen_string_literal: true

class Sales
  t = {}
  x = 1
  while x == 1
    puts 'name'
    @name = gets.chomp
    puts 'imported'
    @imported = gets.chomp
    puts 'Exempted'
    @Exempted = gets.chomp
    puts 'price'
    @price = gets.chomp.to_i
    if @imported == 'y' && @Exempted == 'y'
      @price += @price * 0.15
    elsif @imported == 'y' && @Exempted == 'n'
      @price += @price * 0.05
    elsif @imported == 'n' && @Exempted == 'y'
      @price += @price * 0.1
    end
    t[@name] = @price
    puts 'want to add more'
    x = gets.chomp.to_i
  end
  p t
end
s = Sales.new
