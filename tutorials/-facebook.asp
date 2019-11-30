<!DOCTYPE html>
<html>

<head>
	<title>Alex Hedley | Tutorials | Facebook feed using the api, jQuery and JSON</title>
<!-- #include virtual="/head.html"-->
    
    <script src="../scripts/highlight/shCore.js"></script>
    <script src="../scripts/highlight/shAutoloader.js"></script>
    <script src="../scripts/highlight/shBrushXml.js"></script>
    <script src="../scripts/highlight/shBrushJScript.js"></script>
    
    <link rel="stylesheet" href="../css/synhigh.css">
    <link rel="stylesheet" href="../css/highlight/shCore.css">
    <link rel="stylesheet" id="active-theme" href="../css/highlight/shThemeMidnight.css">
    
    <script src="../scripts/theme-switcher.js"></script>
    <script src="../scripts/jquery.cookie.js"></script>
    
    <script>
        SyntaxHighlighter.all();
    </script>

    <script>
        function fbFetch() {
            //Set Url of JSON data from the facebook graph api. make sure callback is set with a '?' to overcome the cross domain problems with JSON
            var url = "http://graph.facebook.com/Amicron/feed?limit=10&callback=?"
            //var url = "https://graph.facebook.com/amicron/notes?access_token=###&callback=?"
            //var url = "http://graph.facebook.com/Amicron&callback=?"; //?limit=10&callback=?

            //Use jQuery getJSON method to fetch the data from the url and then create our unordered list with the relevant data.
            $.getJSON(url, function (json) {
                var html = "<ul>";
                //loop through and within data array's retrieve the message variable.
                $.each(json.data, function (i, fb) {
                    html += "<li>" + fb.message + "</li>";
                });
                html += "</ul>";

                //A little animation once fetched
                $('.facebookfeed').animate({ opacity: 0 }, 500, function () {
                    $('.facebookfeed').html(html);
                });
                $('.facebookfeed').animate({ opacity: 1 }, 500);
            });
        };
    </script>

    <style type="text/css">
	    section {
	        background:#111;
	        color:#fff;
	        font-size:12px;
	        text-align:center;
	        font-family:"Lucida Sans Unicode","Lucida Grande", sans-serif;
	    }
	    .facebookfeed {
	        text-align:left;
	        width:500px;
	        margin:40px auto;
	        border:#555 1px solid;
	        padding:10px;
	        background:#222;
	        -moz-border-radius:8px;
	        -webkit-border-radius:8px;
	        border-radius:8px;
	    }
	    .facebookfeed ul {
	        list-style:none;
	        padding:0;
	        margin:0;
	    }
	    .facebookfeed ul li {
	        list-style:none;
	        padding:10px 0;
	        margin:0;
	        border-bottom:#555 1px solid;
	    }
	    .facebookfeed ul li:last-child{ border:0; }
	    .facebookfeed ul li:hover{ color:#e6f2fa; }	
	</style>
</head>

<body onload="fbFetch()">

<!-- #include virtual="/header.html"-->

<!-- The Theme Drawer -->
<div id="theme-wrapper">
	<div id="theme-drawer">
		<h3>Syntax Highlighter Theme</h3>
        <ul>
			<li><a href="#" rel="Default">Default</a></li>
			<li><a href="#" rel="Django">Django</a></li>
			<li><a href="#" rel="Eclipse">Eclipse</a></li>
			<li><a href="#" rel="Emacs">Emacs</a></li>
			<li><a href="#" rel="FadeToGrey">FadeToGrey</a></li>
            <li><a href="#" rel="Midnight">Midnight</a></li>
            <li><a href="#" rel="RDark">RDark</a></li>
		</ul>
	</div><!-- end #theme-drawer -->
</div><!-- end #theme-wrapper -->
<br />

<h1>Facebook Notes using the API, jQuery and JSON</h1>
<p>I thought I&#39;d share my findings on getting information from a profile's notes section.</p> 

<pre class="brush: xhtml;" title="Add the code to your page">
    code
</pre>

<section>
    <h1>Amicrons' Facebook like page feed</h1>
    <div class="facebookfeed">
	    <h2>Loading...</h2>
    </div>

    <h3>Feel free to view the source :) and follow us on twitter: <a href="http://twitter.com/prettyklicks" target="_blank">@PrettyKlicks</a></h3>
</section>

<h2>Sources</h2>
<ul>
    <li><a href="http://www.prettyklicks.com/blog/making-a-facebook-feed-using-the-graph-api-json-and-jquery/291/">
        http://www.prettyklicks.com/blog/making-a-facebook-feed-using-the-graph-api-json-and-jquery/291/</a><ul>
            <li><a href="http://www.prettyklicks.com/demo/fbjson.php">Demo</a></li>
        </ul>
    </li>
</ul>

</div><!-- Content End -->
</div><!-- Main End -->
</body>

</html>