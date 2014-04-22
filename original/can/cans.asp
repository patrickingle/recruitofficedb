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
<p align="center">CANDIDATES INFORMATION</p>
<hr align="center" width="71%" size="4" color="#FF0000">
<blockquote>
  <blockquote>
    <blockquote>
      <h3 align="left"><font face="Comic Sans MS" color="#FF0000">Selection
      Criteria:-</font></h3>
      <form method="GET" action= "cansearch.asp">
        <table border="0">
          <tr>
            <td width="100%" bgcolor="#FFF9DD" height="641">
              <table border="0" width="674" bgcolor="#FFD8B0">
                <tr>
                  <td width="172">
                    <p align="left">&nbsp;</td>
                  <td width="164">
                    <p align="left">&nbsp;</td>
                  <td width="132">
                    <p align="left">&nbsp;</td>
                  <td width="180">
                    <p align="left">&nbsp;</td>
                </tr>
                <tr>
                  <td width="172">
                    <p align="left"><b><input type="radio" value="all" checked name="CanCol">All
                    Candidates</b></p>
                  </td>
                  <td width="164">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="132">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="180">
                    <p align="left">&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p align="left"><b><input type="radio" name="CanCol" value="can_id">Candidate
                    ID:&nbsp;&nbsp;</b></p>
                  </td>
                  <td width="164">
                    <p align="left"><b><input type="text" name="can_id" size="20"></b></p>
                  </td>
                  <td width="132">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="180">
                    <p align="left">&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p align="left"><b><input type="radio" name="CanCol" value="f_name">First
                    Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></p>
                  </td>
                  <td width="164">
                    <p align="left"><b><input type="text" name="f_name" size="20"></b></p>
                  </td>
                  <td width="132">
                    <p align="left"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="CanCol" value="l_name">Last
                    Name:</b></p>
                  </td>
                  <td width="180">
                    <p align="left"><b><input type="text" name="l_name" size="20"></b></p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="164">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="132">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="180">
                    <p align="left">&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p align="left"><b><input type="radio" name="CanCol" value="address">Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></p>
                  </td>
                  <td width="164">
                    <p align="left"><b><input type="text" name="address" size="20"></b></p>
                  </td>
                  <td width="132">
                    <p align="left"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="CanCol" value="city">City:</b></p>
                  </td>
                  <td width="180">
                    <p align="left"><b><input type="text" name="city" size="20"></b></p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p align="left"><b><input type="radio" name="CanCol" value="state_province">State/Province:&nbsp;</b></p>
                  </td>
                  <td width="164"> 
                    <p align="left"><b> <input type="text" name="state_province" size="20"></b></p>
                  </td>
                  <td width="132">
                    <p align="left"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="CanCol" value="country">Country:&nbsp;</b></p>
                  </td>
                  <td width="180">
                    <p align="left"><b><input type="text" name="country" size="20"></b></p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p align="left"><b><input type="radio" name="CanCol" value="sex">Sex:</b></p>
                  </td>
                  <td width="164">
                    <p align="left"><b><select size="1" name="sex">
          <option>F</option>
          <option selected>M</option>
        </select></b></p>
                  </td>
                  <td width="132">
                    <p align="left"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="CanCol" value="married">Married:&nbsp;</b></p>
                  </td>
                  <td width="180">
        <p align="left"><b>
        <select size="1" name="married">
          <option>Y</option>
          <option selected>N</option>
        </select></b></p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="164">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="132">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="180">
                    <p align="left">&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p align="left"><b><input type="radio" name="CanCol" value="max_edu">Max. Basic
        Education:</b></p>
                  </td>
                  <td width="164">
                    <p align="left"><b><input type="text" name="max_edu" size="20"></b></p>
                  </td>
                  <td width="132">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="180">
                    <p align="left">&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p align="left"><b><input type="radio" name="CanCol" value="os">Operating System:&nbsp;</b></p>
                  </td>
                  <td width="164">
                    <p align="left"><b><input type="text" name="os" size="20"></b></p>
                  </td>
                  <td width="132">
                    <p align="left"><b>&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="CanCol" value="lang">Language:&nbsp;</b></p>
                  </td>
                  <td width="180">
                    <p align="left"><b><input type="text" name="lang" size="20"></b></p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p align="left"><b><input type="radio" name="CanCol" value="other_skills">Other Skill:&nbsp;</b></p>
                  </td>
                  <td width="164">
                    <p align="left"><b><input type="text" name="other_skills" size="20"></b></p>
                  </td>
                  <td width="132">
                    <p align="left"><b>&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="CanCol" value="certs">Certification:&nbsp;</b></p>
                  </td>
                  <td width="180"> 
                    <p align="left"><b> <input type="text" name="certs" size="20"></b></p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="164">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="132">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="180">
                    <p align="left">&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p align="left"><b><input type="radio" name="CanCol" value="update_date">Date:</b></p>
                  </td>
                  <td width="164">
                    <p align="left"><b><input type="text" name="submit_date" size="20">
                    (MM/DD/YYYY)</b></p>
                  </td>
                  <td width="132">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="180">
                    <p align="left">&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="164">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="132">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="180">
                    <p align="left">&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p align="left"><b><input type="radio" name="CanCol" value="select_status">Selection
        Status:&nbsp;</b></p>
                  </td>
                  <td width="164">
                    <p align="left"><b><select size="1" name="select_status">
          <option selected>not_approved</option>
          <option>approved</option>
        </select></b></p>
                  </td>
                  <td width="132">
                    <p align="left"><b>&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="CanCol" value="h1_status">H1 Status:</b></p>
                  </td>
                  <td width="180">
                    <p align="left"><b><select size="1" name="h1_status">
          <option selected>N/A</option>
          <option>processing</option>
          <option>processed</option>
          <option>not_required</option>
        </select></b></p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p align="left"><b><input type="radio" name="CanCol" value="can_location">Candidate
        Location:&nbsp;</b></p>
                  </td>
                  <td width="164">
                    <p align="left"><b><select size="1" name="can_location">
          <option selected>nHQ</option>
          <option>HQ</option>
        </select></b></p>
                  </td>
                  <td width="132">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="180">
                    <p align="left">&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="164">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="132">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="180">
                    <p align="left">&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="164">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="132">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="180">
                    <p align="left">&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p align="left">&nbsp;<input type="submit" value="Search" name="B1">
                    <input type="reset" value="Reset" name="B2"></p>
                  </td>
                  <td width="164">
                    <p align="left">&nbsp;<a href="addcan.asp"><b>Add Record</b></a></p>
                  </td>
                  <td width="132">
                    <p align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                  </td>
                  <td width="180">
                    <p align="left">&nbsp;</p>
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
<p align="center"><b><a href="../main.asp">Home</a> | <a href="cans.asp">Candidates</a>
| </b> <b><a href="../clients.asp">Clients</a> | </b><a href="../emp/emps.asp"><b>Employees</b></a><b>
| <a href="../users/users.asp">Users</a> | <a href="../spview/spview.asp">Employees
        working with Clients</a> </b></p>
<hr align="center" width="71%" size="4" color="#FF0000">
<p align="center"><font SIZE="4"><b>© </b>2000 takveen. All rights
are reserved.</font></p>
<p align="center">&nbsp;</p>

</body>

</html>
