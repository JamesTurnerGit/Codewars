def positive_sum(arr)
  0 if arr.size == 0
  sum = 0
  arr.each do |element|
    sum += element if element > 0 
  end
  sum
end