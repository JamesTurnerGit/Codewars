def high_and_low(numbers)
  array = numbers.split.map{|n|n.to_i}.sort
  "#{array[-1]} #{array[0]}"
end