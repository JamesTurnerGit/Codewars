def count list, &block
 list.select(&block).count
end