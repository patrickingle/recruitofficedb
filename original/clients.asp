

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
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>Clients Table&nbsp; -RecruitOffice DB</title>
<style><!--
a { font-weight: bold; text-decoration: none }
a:hover { font-weight: bold; text-decoration: underline }-->
a:hover{color:red;}
                </style>

</head>

<body>

<h1 align="center"><font face="Comic Sans MS" color="#0000FF">RecruitOffice DB</font>&nbsp;</h1>
<p align="center">CLIENTS INFORMATION</p>
<hr align="center" width="71%" size="4" color="#FF0000">
<blockquote>
  <blockquote>
    <blockquote>
      <blockquote>
      <h3 align="left"><font face="Comic Sans MS" color="#FF0000">Selection
      Criteria:-</font></h3><center>
      <form method="GET" action="clientsearch.asp">
          <table border="0" width="35%" bgcolor="#FFF9DD" height="395">
            <tr>
              <td width="100%" height="391">
                <table border="0" width="100%" bgcolor="#FFD8B0">
                  <tr>
                    <td width="26%">&nbsp;</td>
                    <td width="49%">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="26%"><input type="radio" value="all" checked name="ClientCol"><b>All Clients</b></td>
                    <td width="49%">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="26%"><input type="radio" name="ClientCol" value="client_id"> <b>Client
          ID:</b> &nbsp;</td>
                    <td width="49%"><input type="text" name="client_id" size="20"></td>
                  </tr>
                  <tr>
                    <td width="26%"><input type="radio" name="ClientCol" value="name"><b>Name:
          </b></td>
                    <td width="49%"><input type="text" name="name" size="20"></td>
                  </tr>
                  <tr>
                    <td width="26%">&nbsp;</td>
                    <td width="49%">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="26%"><input type="radio" name="ClientCol" value="address"><b>Address:</b> &nbsp;</td>
                    <td width="49%"> <input type="text" name="address" size="20"></td>
                  </tr>
                  <tr>
                    <td width="26%"><input type="radio" name="ClientCol" value="city"><b>City:&nbsp;</b></td>
                    <td width="49%"><b> <input type="text" name="city" size="20"></b></td>
                  </tr>
                  <tr>
                    <td width="26%"><input type="radio" name="ClientCol" value="state_province"><b>State/Province: </b></td>
                    <td width="49%"><input type="text" name="state_province" size="20"></td>
                  </tr>
                  <tr>
                    <td width="26%"><input type="radio" name="ClientCol" value="country"><b>Country:&nbsp;</b></td>
                    <td width="49%"><b><input type="text" name="country" size="20"></b></td>
                  </tr>
                  <tr>
                    <td width="26%">&nbsp;</td>
                    <td width="49%">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="26%">&nbsp;</td>
                    <td width="49%">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="26%"><input type="submit" value="Search" name="cmdSearch">
                      <input type="reset" value="Reset" name="B2"></td>
                    <td width="49%"><a href="addclient.asp"><b>Add
          Record</b></a></td>
                  </tr>
                </table>
              </td>
            </tr>
          </table>
      </form></center>
      </blockquote>
    </blockquote>
  </blockquote>
</blockquote>
<p align="center"><b><a href="main.asp">Home</a> | <a href="can/cans.asp">Candidates</a>
| <a href="clients.asp">Clients</a> | </b> <a href="emp/emps.asp"><b>Employees</b></a><b>
| <a href="users/users.asp">Users</a> | <a href="spview/spview.asp">Employees
        working with Clients</a>  &nbsp;</b></p>
<hr align="center" width="71%" size="4" color="#FF0000">
<p align="center"><font SIZE="4"><b>© </b>2000 takveen. All rights
are reserved.</font></p>
<p align="center">&nbsp;</p>

</body>

</html>
