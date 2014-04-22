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
	Response.Redirect("../login.html")
ElseIf rs.Fields("privilege").Value <> "admin" then
	rs.close
	cn.close
	Set rs=Nothing
	Set cn=Nothing
	Response.Redirect("../noprivilege.html")
Else
	rs.close
	cn.close
	Set rs=Nothing
	Set cn=Nothing

End if

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
      <h3 align="left"><font face="Comic Sans MS" color="#FF0000">Selection
      Criteria:-</font></h3>
      <blockquote>
        <form method="GET" action="usersearch.asp">
          
          <table border="0" bgcolor="#FFF9DD">
            <tr>
              <td width="322" height="268" align="left">
                <table border="0" width="100%" bgcolor="#FFD8B0">
                  <tr>
                    <td width="42%">
                      <p align="left">&nbsp;</td>
                    <td width="58%">
                      <p align="left">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="42%">
                      <p align="left"><b>&nbsp;&nbsp; <input type="radio" value="all" checked name="SecurityCol">All
          Logins</b></p>
                    </td>
                    <td width="58%">
                      <p align="left">&nbsp;</p>
                    </td>
                  </tr>
                  <tr>
                    <td width="42%">
                      <p align="left"><b>&nbsp;&nbsp; <input type="radio" name="SecurityCol" value="login">Login:&nbsp;</b></p>
                    </td>
                    <td width="58%">
                      <p align="left"><input type="text" name="login" size="20"></p>
                    </td>
                  </tr>
                  <tr>
                    <td width="42%">
                      <p align="left"><b>&nbsp;&nbsp; <input type="radio" name="SecurityCol" value="password">Password:&nbsp;</b></p>
                    </td>
                    <td width="58%">
                      <p align="left"> <input name="password" size="20"></p>
                    </td>
                  </tr>
                  <tr>
                    <td width="42%">
                      <p align="left"><b>&nbsp;&nbsp; <input type="radio" name="SecurityCol" value="privilege">Privilege:&nbsp;</b></p>
                    </td>
                    <td width="58%">
                      <p align="left">
          <select size="1" name="privilege">
            <option selected>add_update</option>
            <option>read_only</option>
            <option>admin</option>
          </select></p>
                    </td>
                  </tr>
                  <tr>
                    <td width="42%">
                      <p align="left">&nbsp;</p>
                    </td>
                    <td width="58%">
                      <p align="left">&nbsp;</p>
                    </td>
                  </tr>
                  <tr>
                    <td width="42%">
                      <p align="left">&nbsp;</p>
                    </td>
                    <td width="58%">
                      <p align="left">&nbsp;</p>
                    </td>
                  </tr>
                  <tr>
                    <td width="42%">
                      <p align="left"><input type="submit" value="Submit" name="B1"> 
                      <input type="reset" value="Reset" name="B2">
                      </p>
                    </td>
                    <td width="58%">
                      <p align="left"><b><a href="adduser.asp">Add Record</a></b></p>
                    </td>
                  </tr>
                </table>
              </td>
            </tr>
          </table>
          
        </form>
      </blockquote>
      </blockquote>
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
