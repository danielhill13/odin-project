for (i = 0; i < 32; i++) {
	$('#gridwrapper').append('<tr class="etchrow"></tr>');
};
for (j = 0; j < 32; j++) {
	$('.etchrow').append('<td class="etchtabledata"></td>');
};

$('.etchtabledata').hover(function() {
	$(this).css('background-color', '#aaa')

});

$('#clear').click(function() {
	$('.etchtabledata').css('background-color', 'initial')

});