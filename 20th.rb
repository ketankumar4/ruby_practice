# frozen_string_literal: true

class Ket
  attr_accessor :p, :t, :r, :si, :ci

  def initialize(p, t, r)
    @p = p
    @t = t
    @r = r
    cal(p, r, t)
  end

  def simp(p, r, t)
    @si = p * (1 + r * t).to_f
    puts si
  end

  def com(p, r, _t)
    @ci = p * ((1 + r / 12)**(12 * 2.5)).to_f
    # @ci=(p*((1+(r*0.1/12)**(12*t)))).to_f
    puts ci
  end

  def cal(p, r, t)
    simp(p, r, t)
    com(p, r, t)
    x = ci - si
    puts x.to_s
  end
end
Ket.new(15_000.0, 2.5, 0.1)
