<% 
option explicit

Dim rs 
Dim vSearchStr

Dim vPreClientId
Dim vPreEmployeeID

Response.Buffer=False
%>

<!-- #include file = "connec.asp" -->

<%


Set rs = server.createobject("ADODB.Recordset")

'**********************************************************	
'Following code is used for Validating Access to this page.
'**********************************************************		
vSearchStr= "SELECT * FROM security WHERE session_id= '" + CStr(Session.SessionID) + "'"	
	rs.Open vSearchStr, cn, adOpenStatic, adLockOptimistic

If rs.EOF	then
	rs.close
	cn.close
	Set rs=Nothing
	Set cn=Nothing
	Response.Redirect("../login.html")
Else
	rs.Close
End If
'-----------------------------------------------------------------
			vSearchStr= "SELECT c.client_id, c.cname, e.emp_id, e.f_name, e.l_name " + _
						   "FROM clients c, employees e WHERE c.client_id = e.client_id " + _
							"ORDER BY c.client_id, e.emp_id"							

rs.Open vSearchStr, cn, adOpenStatic, adLockOptimistic
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>RecruitOffice DB</title>
<style><!--
a { font-weight: bold; text-decoration: none }
a:hover { font-weight: bold; text-decoration: underline }-->
a:hover{color:red;}
                </style>

</head>
<body>
	<h1 align="center"><font face="Comic Sans MS" color="#0000FF">RecruitOffice DB</font>&nbsp;</h1>
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
		Response.Write "<tr><td bgcolor=""#FFFFB3"" ><b>" + CStr(rs.fields(0).Value) + "</b></td>"
	Else
		Response.Write "<td bgcolor=""#FFFFB3"">" + "" + "</td>"
	End If
	
	If vPreEmployeeID <> rs.fields(1).Value Then
		Response.Write "<td bgcolor=""#FFFFB3""><b><I>" + CStr(rs.fields(1).Value) + "</b></I></td>"
	Else
		Response.Write "<td bgcolor=""#FFFFB3"">" + "" + "</td>"
	End If

		Response.Write "<td bgcolor=""#FFFFB3"">" + CStr(rs.fields(2).Value) + "</td>"
		Response.Write "<td bgcolor=""#FFFFB3"">" + Trim(rs.fields(3).Value) + " " +Trim(rs.fields(4).Value) + "</td></tr>"
	
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

<p align="center">&nbsp;</p>
<p align="center"><b><a href="../main.asp">Home</a> | <a href="../can/cans.asp">Candidates</a>
| <a href="../clients.asp">Clients</a> | </b> <a href="../emp/emps.asp"><b>Employees</b></a><b>
| <a href="../users/users.asp">Users</a> | <a href="spview.asp">Employees
        working with Clients</a> </b></p>
<hr align="center" width="71%" size="4" color="#FF0000">
<p align="center"><font SIZE="4"><b>© </b>2000 takveen. All rights
are reserved.</font></p>
<p align="center">&nbsp;</p>

</body>
</html>
