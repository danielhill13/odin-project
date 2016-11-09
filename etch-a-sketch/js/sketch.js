
for (j = 0; j < 16; j++) {
	for (i = 0; i < 16; i++) {
	$('#gridwrapper').append('<div class="etchdiv"></div>');
	};
	$('#gridwrapper').append('<br/>');
};
$('.etchdiv').hover(function() {
	$(this).css('background-color', '#aaa')

});