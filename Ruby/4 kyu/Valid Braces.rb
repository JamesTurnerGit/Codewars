def validBraces(braces)
  opening = ["{","(","["]
  closing = ["}",")","]"]
  open = []

  braces.chars.map do |char|
    open << char if opening.include? char
    if closing.include? char 
      if opening[closing.index(char)] == open[-1]
        open.pop
      else
        return false
      end
    end
  end
  open.empty?
end
