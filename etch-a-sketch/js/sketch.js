var initialGrid = 16
//Writes and rewrites the table cells
function writeTable() {
	for (i = 0; i < initialGrid; i++) {
	$('#gridwrapper').append('<tr class="etchrow"></tr>');
}	for (i = 0; i < initialGrid; i++) {
	$('.etchrow').append('<td class="etchtabledata"></td>');
	var cellHeight = 640 / initialGrid;
	var cellWidth = 640 / initialGrid;	
	$('.etchtabledata').css({'height':cellHeight, 'width':cellWidth})
};
};
writeTable();

//Adds shading functionality
$(document).on('mouseover', '.etchtabledata', function() {
	$(this).css('background-color', '#aaa');
})

//This randomizes colors
$(document).on('mouseover', '.randometchtabledata', function() {
	var R = Math.floor(Math.random() * 256);
	var G = Math.floor(Math.random() * 256);
	var B = Math.floor(Math.random() * 256);
	var color = 'rgb(' + R +","+ G + "," + B + ")";
	console.log(color);
	$(this).css('background-color', color);
});

//$(document).on('mouseover', '.etchtabledata, .randometchtabledata', function() {
//	$(this).css('opacity', '0.1');
//});

//Actionizes Clear button, prompts for new grid size, gets new grid
$('#clear').click(function() {
	$('.etchrow').remove();
	$('.etchtabledata').remove();
	var newGrid = prompt("How big do you want the grid?");
	console.log(newGrid);
	initialGrid = newGrid;
	writeTable();

});

//Sets class for squares for random colors on hover
$('#randomcolors').click(function() {
	$('.etchtabledata').css('background-color', 'initial');
	$('.etchtabledata').toggleClass('randometchtabledata');
});
