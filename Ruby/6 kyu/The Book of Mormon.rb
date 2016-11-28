def mormons(start, reach, target,num = 0)
  return num if start >= target
  start = start * reach + start
  num += 1
  mormons(start,reach,target,num)
end