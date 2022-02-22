# frozen_string_literal: true

class Ket
  attr_accessor :priciple, :time, :rate, :simple_interest, :compound_interest

  def initialize(p, t, r)
    @priciple = p
    @time = t
    @rate = r
    cal(p, r, t)
  end

  def simple(p, r, t)
    @simple_interest = p * (1 + r * t).to_f
    puts simple_interest
  end

  def compond(p, r, _t)
    @compound_interest = p * ((1 + r / 12)**(12 * 2.5)).to_f
    # @ci=(p*((1+(r*0.1/12)**(12*t)))).to_f
    puts compound_interest
  end

  def cal(p, r, t)
    simple(p, r, t)
    compond(p, r, t)
    x = compound_interest - simple_interest
    puts x.to_s
  end
end
Ket.new(15_000.0, 2.5, 0.1)
