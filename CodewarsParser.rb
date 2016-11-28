#https://www.codewars.com/users/jayteh/completed_solutions

big_string = File.read("CodeWars.txt")
home_directory = Dir.pwd

temp = big_string.scan(/\d kyu/)
challenges = big_string.split(/\d kyu/).map.with_index { |e, i| e = temp[i-1].to_s + e.to_s}
challenges = challenges[1..-1]

## will currently take oldest timestamp instead of newest
challenges.map! do |challenge|
  challenge_inlines = challenge.split("\n")
  kyu        = challenge_inlines[0]
  name       = challenge_inlines[1]
  language   = challenge_inlines[2][0..-2]
  timestamp  = challenge_inlines[-1].sub("RefactorDiscuss","").sub("Refactor","")
  code_block = challenge_inlines[4..-2].join("\n").split(/\d{1,2} \w+ agoRefactor(Discuss)?/)[0]
  challenge  = {kyu: kyu,name: name,language: language,timestamp: timestamp,code_block: code_block}
end

def safeMkdir(directory)
  Dir.mkdir(directory) unless File.directory?(directory)
end

def safeFilename(file_name)
  bad_chars = ["#","%","&","{","}","\\","<",">","*","?","/","$","!","'","\"",":","@","+","`","|","="]
  bad_chars.each{|char| file_name.gsub!(char,"")}
  file_name
end

challenges.each do |challenge|
  target_directory = File.join(home_directory,challenge[:language])
  safeMkdir(target_directory)
  target_directory = File.join(target_directory,challenge[:kyu])
  safeMkdir(target_directory)
  case challenge[:language]
  when "Ruby"  ; extension = "rb"
  when "Python"; extension = "py"
  else           extension = "txt"
  end
  file_name = safeFilename("#{challenge[:name]}.#{extension}")
  file_name = File.join(target_directory,file_name)
  file = File.open(file_name,"w")
  file.write(challenge[:code_block])
  file.close
end
