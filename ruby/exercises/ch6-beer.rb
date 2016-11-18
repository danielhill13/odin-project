#Write a program which prints out the lyrics to that beloved classic, 
#that field-trip favorite: "99 Bottles of Beer on the Wall.
beer = 99
while beer > 0
	puts beer.to_s + " bottles of beer on the wall! " + beer.to_s + "bottles of beer! Take one down, pass it around, " + (beer-1).to_s + " bottles of beer on the wall!"
	beer = beer -= 1
end
puts 'Song\'s done!'