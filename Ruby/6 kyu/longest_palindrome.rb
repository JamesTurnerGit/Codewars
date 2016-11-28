def longest_palindrome s
  longest = 0
  for seeking_length in 1..s.length
    for substring_id in 0..s.length
      substring = s[substring_id..seeking_length]
      longest = substring.length if substring.is_palindrome? && substring.length > longest
    end
  end
  return longest
end

class String
  def is_palindrome?
    self == self.reverse ? true : false
  end
end