# Find the sum of all the multiples of 3 or 5 below 1000.

totalSum = 0
myVar = 0
#listOfNumbers = []
while myVar < 1000
  if (myVar % 3 == 0 || myVar % 5 == 0)
#    listOfNumbers.push myVar
    totalSum = totalSum + myVar
    myVar = myVar += 1
  else
    myVar = myVar += 1
  end
end
puts myVar
puts totalSum
#puts listOfNumbers
