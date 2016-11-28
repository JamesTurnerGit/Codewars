def min list, &block
  list.sort(&block).first
end