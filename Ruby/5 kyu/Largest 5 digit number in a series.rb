def solution(digits)
  digits = digits.to_s
  high = 0
  for i in 0...digits.length
    sum = (digits[i].to_s + digits[i+1].to_s + digits[i+2].to_s+ digits[i+3].to_s + digits[i+4].to_s).to_i
    high = sum if  sum > high
  end
  high
end