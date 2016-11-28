def longest(a1, a2)
  return (a1.split("") + a2.split("")).sort.uniq.join
end