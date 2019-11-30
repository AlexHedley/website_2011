/* cookie vars */
/*
 * One quick note: due to security settings in the Google Chrome browser,
 * the cookie plugin will not work locally. You will need to upload it to
 * a server or use the http protocol.
 */
var cookie_name = "selected_theme";
var cookie_options = { path: '/', expires: 7 };

$(document).ready(function(){
	/* Get Cookie */
	var get_cookie = $.cookie(cookie_name);
	if(get_cookie != null) {
	    $("#active-theme").attr({ href: "../css/highlight/shTheme" + get_cookie + ".css" }); // if the cookie has a value, get that value
	}

	/* theme switcher */
	$("#theme-drawer a").click(function() {
		var themename = $(this).attr("rel");	// get the rel value and store it in themename
		$("#active-theme").attr({ href: "../css/highlight/shTheme" + themename + ".css" }); // update the value of the href, which will point to the css file of the theme
		$.cookie(cookie_name, themename, cookie_options);	// update the value of the cookie
		return false;
	}); 
	
});