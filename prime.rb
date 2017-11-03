# Add  code here!
require 'pry'
require 'benchmark'
require 'bigdecimal/math'


def prime?(num)
  hold = []
  if num > 1
    check = Array (2..num-1)
    check.each() {|array_num| hold << false if num % array_num == 0}
  else
    return false
  end
  hold.include?(false) ? false : true
end


puts Benchmark.measure{prime?(13389983452)}
