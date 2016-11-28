class Plugboard
   def initialize(wires = "")      
    raise "odd number of connections" if wires.length.odd?
    raise "too many wires" if wires.length > 20
    raise "wires not unique" if wires.chars.uniq.length != wires.length

    @swaps = {}
    while wires.length > 0 
      @swaps[wires[0]] = wires[1]
      @swaps[wires[1]] = wires[0]
      wires = wires[2..wires.length]
    end  
  
  end
  def process(wire)
    return @swaps[wire] if @swaps[wire] != nil
    return wire
  end
end
