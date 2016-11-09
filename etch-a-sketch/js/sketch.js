var i = 0;
function writetable() {
	for (i = 0; i < 32; i++) {
	$('#gridwrapper').append('<tr class="etchrow"></tr>');
}	for (i = 0; i < 32; i++) {
	$('.etchrow').append('<td class="etchtabledata"></td>');
};
};
writetable();


$('.etchtabledata').hover(function() {
	$(this).css('background-color', '#aaa')

});

//need to work on this. it shrinks the size every clear
$('#clear').click(function() {
	$('.etchtabledata').css('background-color', 'initial');
	var usergridinput = prompt("How big do you want the grid?");
	i = usergridinput;
	writetable();

});