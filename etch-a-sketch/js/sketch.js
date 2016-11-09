var initialGrid = 32
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

//Actionizes Clear button, prompts for new grid size, gets new grid
$('#clear').click(function() {
	$('.etchrow').remove();
	$('.etchtabledata').remove();
	var newGrid = prompt("How big do you want the grid?");
	console.log(newGrid);
	initialGrid = newGrid;
	writeTable();

});