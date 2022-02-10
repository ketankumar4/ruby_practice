require 'Time'
# frozen_string_literal: true
class Kes
  attr_accessor :hr, :min, :sec, :nhr, :nmin, :nsec, :nday
  def initialize(hr,min,sec)
    @hr=hr
    @min=min
    @sec=sec
  end
  def show(nmin,nhr,nsec,nday)
    print "#{@nday} days "
    print "#{@nhr}:"
    print "#{@nmin}:"
    print "#{@nsec}\n"
  end
  def norm(min,hr,sec)
    @nmin = min + sec/ 60
    @nsec = sec % 60
    @nhr = hr + min / 60
    @nday = @nhr/24
    @nhr = @nhr % 24
    @nmin = min % 60
    show(nmin,nhr,nsec,nday)
  end
  def add(t1,t2)
    #temp=Kes.new(0,0,0)
    @nsec = t1.sec + t2.sec
    @nmin = t1.min + t2.min
    @nhr = t1.hr + t2.hr
    norm(nmin,nhr,nsec)
    #return temp
    #return temp
  end
end
t1=Kes.new(2,50,30)
t2=Kes.new(4,20,34)
t1.add(t1,t2)
