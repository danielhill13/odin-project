#Write a Deaf Grandma program. Whatever you say to grandma (whatever you type in), she should
#respond with  HUH?!  SPEAK UP, SONNY!, unless you shout it (type in all capitals). If you
#shout, she can hear you (or at least she thinks so) and yells back, NO, NOT SINCE 1938! To
#make your program really believable, have grandma shout a different year each time; maybe any
#year at random between 1930 and 1950. (This part is optional, and would be much easier if you
#read the section on Ruby's random number generator at the end of the methods chapter.) You
#can't stop talking to grandma until you shout BYE.
response = gets.chomp
while response != 'BYE'
	if (response == response.upcase and response != 'BYE')
		puts 'NO, NOT SINCE ' + rand(1930...1951).to_s
		response = gets.chomp

	else
		response != response.upcase
		puts 'HUH? SPEAK UP SONNY'
		response = gets.chomp
	end
end
response2 = gets.chomp
while response2 != 'BYE'
	if (response2 == response2.upcase and response2 != 'BYE')
		puts 'NO, NOT SINCE ' + rand(1930...1951).to_s
		response2 = gets.chomp

	else
		response2 != response2.upcase
		puts 'HUH? SPEAK UP SONNY'
		response2 = gets.chomp
	end
end
response3 = gets.chomp
while response3 != 'BYE'
	if (response3 == response3.upcase and response3 != 'BYE')
		puts 'NO, NOT SINCE ' + rand(1930...1951).to_s
		response3 = gets.chomp

	else
		response3 != response3.upcase
		puts 'HUH? SPEAK UP SONNY'
		response3 = gets.chomp
	end
end
puts 'FINE GOODBYE YOU WHIPPERSNAPPER'
