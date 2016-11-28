def find_spaceship(map)
  map.split("\n").reverse.each_with_index do |line,index|
    return [line.chars.find_index("X"),index]if line.include?("X")
  end
  "Spaceship lost forever."
end