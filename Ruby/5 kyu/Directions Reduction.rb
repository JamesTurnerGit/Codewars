def dirReduc(arr)
    arr.each_with_index do |direction,index|
    break if index==arr.length - 1
    next_directions = [direction,arr[index+1]].sort
    if next_directions == ["NORTH","SOUTH"]||next_directions == ["EAST","WEST"]
      arr.delete_at(index + 1)
      arr.delete_at(index)
      dirReduc(arr)        
      return arr
    end
  end
  return arr
end