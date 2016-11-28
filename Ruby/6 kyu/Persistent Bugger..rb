def persistence(n)
    return 0 if n.to_s.length == 1
    product = n.to_s.chars.map(&:to_i).reduce(:*)
    1 + persistence(product)   # your code
end