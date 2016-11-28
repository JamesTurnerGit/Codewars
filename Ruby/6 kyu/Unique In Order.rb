def unique_in_order(x)
 x = x.chars if x.is_a? String
 current = nil
 x = x.map do |char|
  if char == current
   char = nil
  else
   current = char
  end
 end
 x.compact
end