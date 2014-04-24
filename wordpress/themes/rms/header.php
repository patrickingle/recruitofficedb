<html>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title><?php echo get_bloginfo( 'name' ); ?></title>
<?php wp_head(); ?>
</head>
<body bgcolor="#00CC99">
<script language="JScript">
<!--
    ua=navigator.userAgent;
    v=navigator.appVersion.substring(0,1);
    if ((ua.lastIndexOf("MSIE")!=-1) && (v!='1') && (v!='2') && (v!='3')) {
        document.body.onmouseover=makeCool;
        document.body.onmouseout=makeNormal;
	  }

    function makeCool() {
        src = event.toElement;
        if (src.tagName == "A") {
            src.oldcol = src.style.color;
            src.style.color = "FF0000"; 
        }
	 }
	 
    function makeNormal() {
        src=event.fromElement;
        if (src.tagName == "A") {
            src.style.color = src.oldcol;
        }
    }
function over() {
    window.event.srcElement.style.filter = "alpha(opacity=90)";
}
function out() {
    window.event.srcElement.style.filter = "alpha(opacity=100)";
}
//-->
</SCRIPT>
<table border="0" width="100%">
  <tr>
    <td width="17%" rowspan="2" align="center">
      <p align="center"><img border="2" src="<?php  echo get_stylesheet_directory_uri(); ?>/logo.jpg" align="left" onmouseover="over()" onmouseout="out()" style="filter:alpha(opacity=100)" width="136" height="40"></td>
    <td width="83%">
      <p align="right">
      <b>
<?php
		if ( is_user_logged_in() ) { // Display WordPress login form:
    		wp_loginout( home_url() ); // Display "Log Out" link.
      	}
?>
      </b></td>
  </tr>
  <tr>
    <td width="83%"></td>
  </tr>
</table>

<h1 align="center"><font face="Comic Sans MS" color="#0000FF"><?php echo get_bloginfo( 'name' ); ?></font>&nbsp;</h1>

<hr align="center" width="71%" size="4" color="#FF0000">
