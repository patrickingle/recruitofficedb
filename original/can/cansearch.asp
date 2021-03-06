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
Else
	rs.Close
End If
'--------------------------------------------------------------


Select Case Request.QueryString("CanCol")
		Case "can_id"
			if Not IsNumeric(trim(Request.QueryString("can_id"))) then
				vSearchStr= "select * from candidates where can_id = 0"
			Else
				vSearchStr= "select * from candidates where can_id = " + trim(Request.QueryString("can_id"))
			End if
		Case "f_name"
			vSearchStr= "select * from candidates where f_name like '%" + trim(Request.QueryString("f_name")) + "%'"	
		Case "l_name"
			vSearchStr= "select * from candidates where l_name like '%" + trim(Request.QueryString("l_name")) + "%'"
		Case "address"
			vSearchStr= "select * from candidates where (present_address like '%" + trim(Request.QueryString("address")) + "%') or " + _
							"(perma_address like '%" +trim(Request.QueryString("address")) + "%')"
		Case "city"
			vSearchStr= "select * from candidates where city like '%" + trim(Request.QueryString("city")) + "%'"
		Case "state_province"
			vSearchStr= "select * from candidates where state_province like '%" + trim(Request.QueryString("state_province")) + "%'"
		Case "country"
			vSearchStr= "select * from candidates where country like '%" + trim(Request.QueryString("country")) + "%'"
		Case "sex"
			vSearchStr= "select * from candidates where sex like '%" + trim(Request.QueryString("sex")) + "%'"
		Case "married"
			vSearchStr= "select * from candidates where married like '%" + trim(Request.QueryString("married")) + "%'"
		Case "max_edu"
			vSearchStr= "select * from candidates where max_edu like '%" + trim(Request.QueryString("max_edu")) + "%'"
		Case "os"
			vSearchStr= "select * from candidates where (os1 like '%" + trim(Request.QueryString("os")) + "%') or " + _
							"(os2 like '%" + trim(Request.QueryString("os")) + "%') or " + "(os3 like '%" + trim(Request.QueryString("os")) + "%')"  
		Case "lang"
			vSearchStr= "select * from candidates where (lang1 like '%" + trim(Request.QueryString("lang")) + "%') or " + _
							"(lang2 like '%" + trim(Request.QueryString("lang")) + "%') or " + "(lang3 like '%" + trim(Request.QueryString("lang")) + "%')"  
		Case "other_skills"
			vSearchStr= "select * from candidates where other_skills like '%" + trim(Request.QueryString("other_skills")) + "%'"
		Case "certs"
			vSearchStr= "select * from candidates where certs like '%" + trim(Request.QueryString("certs")) + "%'"
		Case "update_date"
			if Not IsDate(trim(Request.QueryString("submit_date"))) then
					vSearchStr= "select * from candidates where can_id = 0"
			Else
			vSearchStr= "select * from candidates where submit_date = #" + CStr(DateValue(trim(Request.QueryString("submit_date")))) + "#"
			End if
		Case "select_status"
			vSearchStr= "select * from candidates where select_status = '" + trim(Request.QueryString("select_status")) + "'"
		Case "h1_status"
			vSearchStr= "select * from candidates where h1_status like '%" + trim(Request.QueryString("h1_status")) + "%'"
		Case "can_location"
			vSearchStr= "select * from candidates where can_location = '" + trim(Request.QueryString("can_location")) + "'"
		Case Else
			vSearchStr= "select * from candidates"
End Select

vFinalStr = vSearchStr + " order by can_id"
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
	<p align="center">CANDIDATES INFORMATION</p>
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
  	<th bgcolor="#FFD5AA">ID</th>
  	<th bgcolor="#FFD5AA">First Name</th>
  	<th bgcolor="#FFD5AA">Last Name</th>
  	<th bgcolor="#FFD5AA">Present Address</th>
  	<th bgcolor="#FFD5AA">Permanent Address</th>
  	<th bgcolor="#FFD5AA">City</th>
  	<th bgcolor="#FFD5AA">State/Province</th>
  	<th bgcolor="#FFD5AA">Country</th>
  	<th bgcolor="#FFD5AA">Zip Code</th>
  	<th bgcolor="#FFD5AA">Phone</th>
  	<th bgcolor="#FFD5AA">Email</th>
  	<th bgcolor="#FFD5AA">Fax</th>
  	<th bgcolor="#FFD5AA">Sex</th>
  	<th bgcolor="#FFD5AA">Married</th>
  	<th bgcolor="#FFD5AA">Max Education</th>
  	<th bgcolor="#FFD5AA">Institute</th>
  	<th bgcolor="#FFD5AA">OS1</th>
  	<th bgcolor="#FFD5AA">OS2</th>
  	<th bgcolor="#FFD5AA">OS3</th>
  	<th bgcolor="#FFD5AA">Lang1</th>
  	<th bgcolor="#FFD5AA">Lang2</th>
  	<th bgcolor="#FFD5AA">Lang3</th>
  	<th bgcolor="#FFD5AA">Other Skills</th>
  	<th bgcolor="#FFD5AA">Certification</th>
  	<th bgcolor="#FFD5AA">Max Experience</th>
	<th bgcolor="#FFD5AA">Date</th>
  	<th bgcolor="#FFD5AA">Project1</th>
  	<th bgcolor="#FFD5AA">Project2</th>
  	<th bgcolor="#FFD5AA">Project3</th>
  	<th bgcolor="#FFD5AA">Other Projects</th>
  	<th bgcolor="#FFD5AA">Selection Status</th>
  	<th bgcolor="#FFD5AA">H1 Status</th>
  	<th bgcolor="#FFD5AA">Can Location</th>
</tr>

<Form Action="candelete.asp" Method=Get>
<%
Do While Not rs.EOF
	Response.Write "<tr><td bgcolor=""#FFFFB3"" align=""center"">"
	%>
	<Input Type=Checkbox Name="chk_can" Value= "<% =CStr(rs.fields("can_id").Value) %>" >
	<% 	
	Response.Write "</td>" 
	Response.Write "<td bgcolor=""#FFFFB3"" align=""center"">" %>
	<Input Type="Radio" Name="radio_can" Value= "<% =CStr(rs.fields("can_id").Value) %>" >
	<%
	Response.Write "</td>"
	Response.Write "<td bgcolor=""#FFFFB3"">" + CStr(rs.fields("can_id").Value) + "</td>"
	Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("f_name").Value + "</td>"
	Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("l_name").Value + "</td>"
	Response.Write "<td bgcolor=""#FFFFB3"">" + Trim(rs.fields("present_address").Value) + "</td>"
	Response.Write "<td bgcolor=""#FFFFB3"">" + Trim(rs.fields("perma_address").Value) + "</td>"
	Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("city").Value + "</td>"
	Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("state_province").Value + "</td>"
	Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("country").Value + "</td>"
	
	If IsNull(rs.fields("zip_code").Value) or trim(rs.fields("zip_code").Value)="" then
		Response.Write "<td bgcolor=""#FFFFB3"">" + "-" + "</td>"
	Else
		Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("zip_code").Value + "</td>"
	End if
	
	If IsNull(rs.fields("phone").Value) or trim(rs.fields("phone").Value)="" Then
		Response.Write "<td bgcolor=""#FFFFB3"">" + "-" + "</td>"
	Else
		Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("phone").Value + "</td>"
	End If
	If IsNull(rs.fields("email").Value) or trim(rs.fields("email").Value)="" Then
		Response.Write "<td bgcolor=""#FFFFB3"">" + "-" + "</td>"
	Else
		Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("email").Value + "</td>"
	End If
	If IsNull(rs.fields("fax").Value) or trim(rs.fields("fax").Value)="" Then
		Response.Write "<td bgcolor=""#FFFFB3"">" + "-" + "</td>"
	Else
		Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("fax").Value + "</td>"
	End If
	
	Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("sex").Value + "</td>"
	Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("married").Value + "</td>"
	Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("max_edu").Value + "</td>"
	Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("max_institute").Value + "</td>"

	If IsNull(rs.fields("os1").Value) or trim(rs.fields("os1").Value)="" Then
		Response.Write "<td bgcolor=""#FFFFB3"">" + "-" + "</td>"
	Else
		Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("os1").Value + "</td>"
	End If
	If IsNull(rs.fields("os2").Value) or trim(rs.fields("os2").Value)="" Then
		Response.Write "<td bgcolor=""#FFFFB3"">" + "-" + "</td>"
	Else
		Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("os2").Value + "</td>"
	End If
	If IsNull(rs.fields("os3").Value) or trim(rs.fields("os3").Value)="" Then
		Response.Write "<td bgcolor=""#FFFFB3"">" + "-" + "</td>"
	Else
		Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("os3").Value + "</td>"
	End If
	If IsNull(rs.fields("lang1").Value) or trim(rs.fields("lang1").Value)="" Then
		Response.Write "<td bgcolor=""#FFFFB3"">" + "-" + "</td>"
	Else
		Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("lang1").Value + "</td>"
	End If
	If IsNull(rs.fields("lang2").Value) or trim(rs.fields("lang2").Value)="" Then
		Response.Write "<td bgcolor=""#FFFFB3"">" + "-" + "</td>"
	Else
		Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("lang2").Value + "</td>"
	End If
	If IsNull(rs.fields("lang3").Value) or trim(rs.fields("lang3").Value)="" Then
		Response.Write "<td bgcolor=""#FFFFB3"">" + "-" + "</td>"
	Else
		Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("lang3").Value + "</td>"
	End If
	If IsNull(rs.fields("other_skills").Value) or trim(rs.fields("other_skills").Value)="" Then
		Response.Write "<td bgcolor=""#FFFFB3"">" + "-" + "</td>"
	Else
		Response.Write "<td bgcolor=""#FFFFB3"">" + Trim(rs.fields("other_skills").Value) + "</td>"
	End If
	If IsNull(rs.fields("certs").Value) or trim(rs.fields("certs").Value)="" Then
		Response.Write "<td bgcolor=""#FFFFB3"">" + "-" + "</td>"
	Else
		Response.Write "<td bgcolor=""#FFFFB3"">" + Trim(rs.fields("certs").Value) + "</td>"
	End If
	
		Response.Write "<td bgcolor=""#FFFFB3"">" + Cstr(rs.fields("tot_max_exp").Value) + "</td>"
		Response.Write "<td bgcolor=""#FFFFB3"">" + Cstr(rs.fields("submit_date").Value) + "</td>"

	If IsNull(rs.fields("project1").Value) or trim(rs.fields("project1").Value)="" Then
		Response.Write "<td bgcolor=""#FFFFB3"">" + "-" + "</td>"
	Else
		Response.Write "<td bgcolor=""#FFFFB3"">" + Trim(rs.fields("project1").Value) + "</td>"
	End If
	If IsNull(rs.fields("project2").Value) or trim(rs.fields("project2").Value)="" Then
		Response.Write "<td bgcolor=""#FFFFB3"">" + "-" + "</td>"
	Else
		Response.Write "<td bgcolor=""#FFFFB3"">" + Trim(rs.fields("project2").Value) + "</td>"
	End If
	If IsNull(rs.fields("project3").Value) or trim(rs.fields("project3").Value)="" Then
		Response.Write "<td bgcolor=""#FFFFB3"">" + "-" + "</td>"
	Else
		Response.Write "<td bgcolor=""#FFFFB3"">" + Trim(rs.fields("project3").Value) + "</td>"
	End If
	If IsNull(rs.fields("other_projects").Value) or trim(rs.fields("other_projects").Value)="" Then
		Response.Write "<td bgcolor=""#FFFFB3"">" + "-" + "</td>"
	Else
		Response.Write "<td bgcolor=""#FFFFB3"">" + Trim(rs.fields("other_projects").Value) + "</td>"
	End If
		
		Response.Write "<td bgcolor=""#FFFFB3"">" + Trim(rs.fields("select_status").Value) + "</td>"
		Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("h1_status").Value + "</td>"
		Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("can_location").Value + "</td>"
		
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
<p align="center"><b><a href="../main.asp">Home</a> | <a href="cans.asp">Candidates</a>
| <a href="../clients.asp">Clients</a> | </b> <a href="../emp/emps.asp"><b>Employees</b></a><b>
| <a href="../users/users.asp">Users</a> | <a href="../spview/spview.asp">Employees
        working with Clients</a> </b></p>
<hr align="center" width="71%" size="4" color="#FF0000">
<p align="center"><font SIZE="4"><b>� </b>2000 takveen. All rights
are reserved.</font></p>
<p align="center">&nbsp;</p>

</body>
</html>
