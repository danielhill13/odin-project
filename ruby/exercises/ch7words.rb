#Let's write a program which asks us to type in as many words as we want 
#(one word per line, continuing until we just press Enter on an empty line), 
#and which then repeats the words back to us in alphabetical order. OK?
wordList = []
word = gets.chomp

while word != ''
	wordList.push word
	word = gets.chomp
end
wordList = wordList.sort
puts wordList