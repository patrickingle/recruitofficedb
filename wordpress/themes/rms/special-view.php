<?php
/**
* Template Name: Special View
*/
get_header();
if (current_user_can('rms_admin') || current_user_can('rms_recruiter')) :
?>
	<p align="center">EMPLOYEES WORKING WITH CLIENTS</p>
	<hr align="center" width="71%" size="4" color="#FF0000">
 		<blockquote>
      	<blockquote>
	    <blockquote>
       <blockquote>
       <h3 align="left"><font face="Comic Sans MS" color="#FF0000">Result:-</font></h3>
		</blockquote>
		</blockquote>
		</blockquote>
		</blockquote>
    <div align="center">
      <center>
<table border="0" width="100%" bgcolor="#FFFFB3" >
  <tr>
  	<th bgcolor="#FFD5AA">Client ID</th>
  	<th bgcolor="#FFD5AA">Client Name</th>
  	<th bgcolor="#FFD5AA">Employee ID</th>
  	<th bgcolor="#FFD5AA">Employee Name</th>
  </tr>
<%
vPreClientId = 0
vPreEmployeeID = 0

Do While Not rs.EOF
	
		
	If vPreClientId <> rs.fields(0).Value Then
		echo "<tr><td bgcolor=""#FFFFB3"" ><b>" + CStr(rs.fields(0).Value) + "</b></td>"
	Else
		echo "<td bgcolor=""#FFFFB3"">" + "" + "</td>"
	End If
	
	If vPreEmployeeID <> rs.fields(1).Value Then
		echo "<td bgcolor=""#FFFFB3""><b><I>" + CStr(rs.fields(1).Value) + "</b></I></td>"
	Else
		echo "<td bgcolor=""#FFFFB3"">" + "" + "</td>"
	End If

		echo "<td bgcolor=""#FFFFB3"">" + CStr(rs.fields(2).Value) + "</td>"
		echo "<td bgcolor=""#FFFFB3"">" + Trim(rs.fields(3).Value) + " " +Trim(rs.fields(4).Value) + "</td></tr>"
	
		vPreClientId = rs.fields(0).Value
    	vPreEmployeeID = rs.fields(1).Value
	
	rs.MoveNext
Loop

rs.Close
cn.Close
Set rs = Nothing
Set cn = Nothing
%>
</table>
      </center>
    </div>
<p align="center">&nbsp;

    <blockquote>
      <blockquote>
        <blockquote>

        </blockquote>
      </blockquote>
    </blockquote>
<?php
else :
	echo '<center><h1>You are not authorized to access this page!</h1></center>';
endif;

get_footer();
?>