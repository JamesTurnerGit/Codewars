def score( dice )

  score_map = [1000,200,300,400,500,600]
  score = 0

  for i in 1..6   #check for threes
    case dice.select{|x| x == i}.length
    when 3 
      score += score_map[i-1]
      dice.delete(i)
    when 4
      score += score_map[i-1]
      dice.delete(i)
      dice << i
    when 5
      score += score_map[i-1]
      dice.delete(i)
      dice << i << i
    end
  end
  #
  
  dice.each do |d|
    if    d == 1 
      score += 100
    elsif d == 5 
      score += 50
    end
  end  

  score
end