<% 
option explicit
Dim rs 
Dim vSearchStr

Response.Buffer=False

%>

<!-- #include file = "connec.asp" -->

<%
Set rs = server.createobject("ADODB.Recordset")

		
		vSearchStr= "SELECT * FROM security WHERE session_id= '" + CStr(Session.SessionID) + "'"	
		
		rs.Open vSearchStr, cn, adOpenStatic, adLockOptimistic

If rs.EOF	then
	rs.close
	cn.close
	Set rs=Nothing
	Set cn=Nothing
	Response.Redirect("login.html")
Else
	rs.close
	cn.close
	Set rs=Nothing
	Set cn=Nothing
End If

%>


<html>
<head>
<title>RecruitOffice DB</title>
<style><!--
a { font-weight: bold; text-decoration: none }
a:hover { font-weight: bold; text-decoration: underline }-->
a:hover{color:red;}
                </style>

</head>
<body>

<h1 align="center"><font face="Comic Sans MS" color="#0000FF">RecruitOffice DB</font>&nbsp;</h1>
<hr align="center" width="71%" size="4" color="#FF0000">
<blockquote>
  <blockquote>
    <blockquote>
      <blockquote>
      <h3 align="left"><font face="Comic Sans MS" color="#FF0000">Tables:-</font></h3>
      </blockquote>
    </blockquote>
  </blockquote>
</blockquote>

  <center>
<table border="1" width="54%" height="105">
  <tr>
    <td width="100%" align="center" height="19" bgcolor="#00CC99">
      <p align="center"><b><a href="can/cans.asp">Candidates</a></b> </td>
  </tr>
  <tr>
    <td width="100%" align="center" height="19" bgcolor="#00CC99"><b><a href="clients.asp">Clients</a></b></td>
  </tr>
  <tr>
    <td width="100%" align="center" height="19" bgcolor="#00CC99"><a href="emp/emps.asp"><b>Employees</b></a><b>&nbsp;</b></td>
  </tr>
  <tr>
    <td width="100%" align="center" height="24" bgcolor="#00CC99"><b><a href="users/users.asp">Users</a></b></td>
  </tr>
</table>
  </center>

<blockquote>
  <blockquote>
    <blockquote>
      <p>&nbsp;</p>
      <blockquote>
      <h3><font face="Comic Sans MS" color="#FF0000">Special View:-</font></h3>
      </blockquote>
    </blockquote>
  </blockquote>
</blockquote>
<div align="center">
  <center>
  <table border="1" width="54%">
    <tr>
      <td width="100%" bgcolor="#00CC99">
        <p align="center"><b><a href="spview/spview.asp">Employees
        working with Clients</a></b></td>
    </tr>
  </table>
  </center>
</div>
<p align="center">&nbsp;</p>
<hr align="center" width="71%" size="4" color="#FF0000">
<p align="center"><font SIZE="4"><b>© </b>2000 takveen. All rights
are reserved.</font></p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
</body>
</html>
