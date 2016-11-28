def generateHashtag(str)
   return false if str == ""
   str = "#" + str.split.each{|x| x.capitalize!}.join
   return str.length >= 140 ?  false : str
end