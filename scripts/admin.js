// ---------- //
// Javascript //
// ---------- //

$(document).ready(function(){
	//Hover the Links on the main page
	$('.hover').bind('touchstart touchend', function(e) {
				e.preventDefault();
				$(this).toggleClass('hover_effect');
			});
	//Hide the Loginform when page load
	$("#logonform").hide();
	//When you click on the Login text show the form
	$('#logon').click(function() {
		$('#logonform').toggle('slow');
	});
});