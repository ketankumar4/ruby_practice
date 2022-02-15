require 'time'
reg = /^(([0-1]?\d)|(2?[0-3]))(:[0-5]\d)){2}$/
def isval?(x)
  return reg =~ x
end
def add(t)
  k=t.split(',')
  if k.each {|s| isval?(s)}
    sum=k.map {|time| Time.parse(time)}.inject(0) do |memo,i|
      memo += time.sec + time.min*60 + time.hour*3600
    end
    show(sum)
  else
    puts "invalid input"
  end
end
def show(sum)
