def tongues(code)
  def conversion(letter,array,ammount)    
    index = array.index(letter)
    next_index = index + ammount
    next_index -= array.length if next_index >= array.length
    array[next_index]
  end

  vowels = ['a', 'i', 'y', 'e', 'o', 'u']
  consonants  = ['b', 'k', 'x', 'z', 'n', 'h', 'd', 'c', 'w', 'g', 'p', 'v', 'j', 'q', 't', 's', 'r', 'l', 'm', 'f']

  code = code.chars.map do |letter|
    caps = letter.upcase == letter ? true : false
    if vowels.include?(letter.downcase)
      letter = conversion(letter.downcase,vowels,3)  
    elsif consonants.include?(letter.downcase)
      letter = conversion(letter.downcase,consonants,10) 
    end
    caps ? letter.upcase : letter
  end
  code.join
end


