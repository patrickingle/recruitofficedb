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

<script Language="JavaScript"><!--
function FrontPage_Form1_Validator(theForm)
{

  if (theForm.login.value == "")
  {
    alert("Please enter a value for the Login field.");
    theForm.login.focus();
    return (false);
  }

  if (theForm.login.value.length > 15)
  {
    alert("Please enter at most 15 characters in the Login field.");
    theForm.login.focus();
    return (false);
  }
  
  if (theForm.password.value == "")
  {
    alert("Please enter a value for the Password field.");
    theForm.password.focus();
    return (false);
  }

  if (theForm.password.value.length > 15)
  {
    alert("Please enter at most 15 characters in the Last Name field.");
    theForm.password.focus();
    return (false);
  }

 return (true);
}
//--></script>

<h1 align="center"><font color="#0000ff" face="Comic Sans MS">RecruitOffice DB</font>&nbsp;</h1>
<p align="center">USERS INFORMATION</p>
<hr align="center" color="#ff0000" SIZE="4" width="71%">
<blockquote>
  <blockquote>
    <blockquote>
      <blockquote>
        <h3 align="left"><font color="#ff0000" face="Comic Sans MS">Add Record:-</font></h3>
        <form method="POST" action="addusers.asp" onsubmit="return FrontPage_Form1_Validator(this)" name="FrontPage_Form1">
           <blockquote>
            <p><font color="#FF0000">Login:</font> <input type="text" name="login" size="20"></p>
            <p><font color="#FF0000">Password:</font> <input type="text" name="password" size="20"></p>
            <p>Privilege: <select size="1" name="privilege">
              <option selected>add_update</option>
              <option>read_only</option>
              <option>admin</option>
            </select></p>
            <p>&nbsp;</p>
            <p><input type="submit" value="Submit" name="B1"> <input type="reset" value="Reset" name="B2"></p>
          </blockquote>
        </form>
        <p align="left">&nbsp;</p>
      </blockquote>
    </blockquote>
  </blockquote>
</blockquote>
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
