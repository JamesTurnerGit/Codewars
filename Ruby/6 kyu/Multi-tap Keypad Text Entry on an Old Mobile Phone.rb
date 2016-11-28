def presses(phrase)
	#button layout
    buttons=[["1"]            ,"ABC2".split(""),"DEF3" .split(""),
             "GHI4" .split(""),"JKL5".split(""),"MNO6" .split(""),
             "PQRS7".split(""),"TUV8".split(""),"WXYZ9".split(""),
             ["*"]            ,[" ","0"]       ,["#"]             ]

    # generate hash of pushes for each button
    button_map = Hash.new
    (("A".."Z").to_a + ("0".."9").to_a << " "  ).each do |letter|
		buttons.each do |button|
			button.each_with_index {|char,press| button_map[letter] = press + 1  if char == letter}
		end
	end
	
  #does the actual counting	
	count = 0
	phrase.upcase.chars.each{|char| count += button_map[char]}
	count
end