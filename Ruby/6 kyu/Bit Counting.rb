def count_bits(n)
  n.to_s(2).split("").map{|x|x.to_i}.inject(0,:+)
end