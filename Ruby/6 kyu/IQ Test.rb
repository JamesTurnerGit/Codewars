def iq_test(numbers)
  odds, evens = 0, 0
  numbers = numbers.split(" ")

  #find if odds or evens are majority
  numbers.each do |number| 
    if number.to_i.even? 
      evens += 1 
    else
      odds += 1
    end
  end

  if evens == 1
    numbers.each_with_index do |number,index| # more evens
      return (index + 1) if number.to_i.even?
    end
  elsif odds == 1
    numbers.each_with_index do |number,index| # more evens
      return (index + 1) if !number.to_i.even?
    end
  else
    return "error #{numbers}"
  end

end