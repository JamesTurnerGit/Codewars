def tally(numbers,worth)
  score = 0
  for i in 0..(numbers.length)
    score += numbers[i].to_i * worth[i].to_i
  end
  score
end

def goodVsEvil(good, evil)

  good_worth = [1,2,3,3,4,10]
  evil_worth = [1,2,2,2,3,5,10]

  good_points = tally(good.split,good_worth)
  evil_points = tally(evil.split,evil_worth) 

  case good_points <=> evil_points
  when 0  then "Battle Result: No victor on this battle field"
  when -1 then "Battle Result: Evil eradicates all trace of Good"
  when 1  then "Battle Result: Good triumphs over Evil"
  end
end
