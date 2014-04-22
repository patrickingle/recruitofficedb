<% 
option explicit

Dim rs 
Dim vSearchStr
Dim vFinalStr

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
ElseIf rs.Fields("privilege").Value <> "admin" then
	rs.close
	cn.close
	Set rs=Nothing
	Set cn=Nothing
	Response.Redirect("../noprivilege.html")
Else
	rs.close
End if
'-----------------------------------------------------------------



Select Case Request.QueryString("SecurityCol")
		Case "login"
			vSearchStr= "select * from security where login like '%" + trim(Request.QueryString("login")) + "%'"
		Case "password"
			vSearchStr= "select * from security where password like '%" + trim(Request.QueryString("password")) + "%'"	
		Case "privilege"
			vSearchStr= "select * from security where privilege like '%" + trim(Request.QueryString("privilege")) + "%'"
		Case Else
			vSearchStr= "select * from security"
End Select

vFinalStr = vSearchStr + " order by user_id"
rs.Open vFinalStr, cn, adOpenStatic, adLockOptimistic
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
	<p align="center">USERS INFORMATION</p>
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
<table border="1" width="100%">
  <tr>
  	<th bgcolor="#FFD5AA">Delete</th>
  	<th bgcolor="#FFD5AA">Update</th>
  	<th bgcolor="#FFD5AA">User ID</th>
  	<th bgcolor="#FFD5AA">Login</th>
  	<th bgcolor="#FFD5AA">Password</th>
  	<th bgcolor="#FFD5AA">Privilege</th>
  	<th bgcolor="#FFD5AA">Session ID</th>
  </tr>

<Form Action="userdelete.asp" Method=Get>
<%
Do While Not rs.EOF
	Response.Write "<tr><td bgcolor=""#FFFFB3"" align=""center"">"
	%>
	<Input Type=Checkbox Name="chk_user" Value= "<% =CStr(rs.fields("user_id").Value) %>" >
	<% 	
	Response.Write "</td>" 
	Response.Write "<td bgcolor=""#FFFFB3"" align=""center"">" %>
	<Input Type="Radio" Name="radio_user" Value= "<% =CStr(rs.fields("user_id").Value) %>" >
	<%
	Response.Write "</td>"
	Response.Write "<td bgcolor=""#FFFFB3"">" + CStr(rs.fields("user_id").Value) + "</td>"
	Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("login").Value + "</td>"
	Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("password").Value + "</td>"
	Response.Write "<td bgcolor=""#FFFFB3"">" + Trim(rs.fields("privilege").Value) + "</td>"
	Response.Write "<td bgcolor=""#FFFFB3"">" + Trim(rs.fields("session_id").Value) + "</td></tr>"
	
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

<Input Type="SUBMIT" Value="Delete" Name="DeleteIt">
<Input Type="SUBMIT" Value="Update" Name="UpdateIt">

</Form>

        </blockquote>
      </blockquote>
    </blockquote>

<p align="center">&nbsp;</p>
<p align="center"><b><a href="../main.asp">Home</a> | <a href="../can/cans.asp">Candidates</a>
| <a href="../clients.asp">Clients</a> | </b> <a href="../emp/emps.asp"><b>Employees</b></a><b>
| <a href="users.asp">Users</a> | <a href="../spview/spview.asp">Employees
        working with Clients</a> </b></p>
<hr align="center" width="71%" size="4" color="#FF0000">
<p align="center"><font SIZE="4"><b>© </b>2000 takveen. All rights
are reserved.</font></p>
<p align="center">&nbsp;</p>

</body>
</html>
