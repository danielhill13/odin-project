//Need to come back to de-dupe the button class clears at least.

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

//Clear button, prompts for new grid size, gets new grid
$('#resize').click(function() {
	$('.etchrow').remove();
	$('.etchtabledata').remove();
	var newGrid = prompt("How big do you want the grid?");
	console.log(newGrid);
	initialGrid = newGrid;
	writeTable();
});

//Clears to basic style
$('#reset').click(function() {
	$('.etchrow').remove();
	$('.etchtabledata').remove();
	writeTable();
});

//Sets class for squares for random colors on hover
$('#randomcolors').click(function() {
	$('.etchtabledata').css('background-color', '#aaa');
	$('.etchtabledata, .opacitytabledata').addClass('randometchtabledata');
});

//Sets class for opacity to happen
$('#opacitybutton').click(function() {
	$('.etchtabledata').css('background-color', '#aaa');
	$('.randometchtabledata, .etchtabledata').toggleClass('opacitytabledata');
	$('.opacitytabledata').removeClass('etchtabledata');
	$('.opacitytabledata').removeClass('randometchtabledata');
	$('.opacitytabledata').css('background-color', '#aaa');
});

//Adds basic functionality
$(document).on('mouseover', '.etchtabledata', function() {
	$(this).css('background-color', '#fff');
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

//This increments opacity on each mouseover
$(document).on('mouseover', '.opacitytabledata', function() {
	var opacitys = $(this).css('opacity');
	if (opacitys > 0) 
		{
		$(this).css('opacity', opacitys - 0.1)
	}
	else{
		$(this).css('opacity', '0');
	}
});
