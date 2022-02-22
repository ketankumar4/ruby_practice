# frozen_string_literal: true

require 'time'
$regex = /^(([0-1]?\d)|(2?[0-3]))(:([0-5]\d)){2}$/.freeze
def isval?(x)
  $regex =~ x
end

def add(t)
  k = t.split(',')
  if k.each { |s| isval?(s) }
    sum = k.map { |time| Time.parse(time) }.inject(0) do |memo, time|
      memo += time.sec + time.min * 60 + time.hour * 3600
    end
    show(sum)
  else
    puts 'invalid input'
  end
end

def show(sum)
  days = sum / 86_400
  p "#{days} & " if days.positive?
  j = format('%02d:%02d:%02d', sum / 3600 % 24, sum / 60 % 60, sum % 60)
  p j
end
puts 'enter times'
t = gets.chomp
add(t)
