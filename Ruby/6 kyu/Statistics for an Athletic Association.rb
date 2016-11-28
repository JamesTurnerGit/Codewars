def to_seconds(string)
  string = string.split("|")
  (((string[0].to_i*60)+string[1].to_i) * 60)+string[2].to_i
end

def two_digits(int)
  string = int.to_s
  case string.length
  when 0 
    string = "00"
  when 1
    string = "0"+string
  end
  return string
end

def to_race_format(int)
  seconds = int % 60
  int -= seconds
  mins = int / 60
  hours = mins /60
  mins -= hours * 60
  return "#{two_digits(hours)}|#{two_digits(mins)}|#{two_digits(seconds)}"
end

def stat(string)
  return "" if string == ""
  times = string.split.map!{|individual| to_seconds(individual)}
  times.sort!
  range = to_race_format(times[-1] - times[0])
  sum = 0 
  times.each{|a| sum += a}
  average = to_race_format(sum / times.length)
  if times.length.odd?
    median = to_race_format(times[times.length / 2] )
  else
    if times.length > 1    
      median = to_race_format((times[times.length / 2] + times [times.length / 2 - 1])/2)
    else
      median = to_race_format(times[0])
    end
  end
  return "Range: #{range} Average: #{average} Median: #{median}"
end
