puts 'Welcome to the leap year identifier! I will tell you all the leap years between the two years you select!'
puts 'Please enter starting year'
startYear = gets.chomp.to_i
puts 'Please enter ending year'
endYear = gets.chomp.to_i
while startYear <= endYear
	if (startYear % 4 == 0 && startYear % 100 != 0) || (startYear % 4 == 0 && startYear % 100 == 0 && startYear % 400 == 0)
	puts startYear.to_s
	startYear = startYear += 1
else
	startYear = startYear += 1
end
end
puts 'That\'s all the leap years!'