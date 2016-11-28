def array_diff(a, b)
  b.each{|b| a.delete(b)}
  return a
end