//This causes browser to timeout - beware!
//This does not work.

var numtest = 600851475143;
var array = [];

for (i = 1; i <= numtest; i++) {
	if (numtest % i === 0) {
		array.push(i);
	}	else{}
}

var largest = 0;
for (i = 0; i <= largest; i++) {
	if (array[i] > largest) {
		largest = array[i];
	}
}
console.log(largest);
