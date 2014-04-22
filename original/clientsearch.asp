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
	Response.Redirect("login.html")
Else
	rs.Close
End If
'--------------------------------------------------------------


Select Case Request.QueryString("ClientCol")
		Case "country"
			vSearchStr= "select * from clients where country like '%" + trim(Request.QueryString("country")) + "%'"
		Case "client_id"
			If Not IsNumeric(trim(Request.QueryString("client_id"))) then
				vSearchStr= "select * from clients where client_id = 0"
			Else
				vSearchStr= "select * from clients where client_id =" + trim(Request.QueryString("client_id")) 
			End If
		Case "name"
			vSearchStr= "select * from clients where cname like '%" + trim(Request.QueryString("name")) + "%'"
		Case "address"
			vSearchStr= "select * from clients where address like '%" + trim(Request.QueryString("address")) + "%'"
		Case "city"
			vSearchStr= "select * from clients where city like '%" + trim(Request.QueryString("city")) + "%'"
		Case "state_province"
			vSearchStr= "select * from clients where state_province like '%" + trim(Request.QueryString("state_province")) + "%'"
		Case Else
			vSearchStr= "select * from clients"
End Select
vFinalStr = vSearchStr + " order by client_id"

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
<table border="1" width="100%">
  <tr>
  	<th bgcolor="#FFD5AA">Delete</th>
  	<th bgcolor="#FFD5AA">Update</th>
  	<th bgcolor="#FFD5AA">ID</th>
  	<th bgcolor="#FFD5AA">Name</th>
  	<th bgcolor="#FFD5AA">Address</th>
  	<th bgcolor="#FFD5AA">City</th>
  	<th bgcolor="#FFD5AA">State/Province</th>
  	<th bgcolor="#FFD5AA">Country</th>
  	<th bgcolor="#FFD5AA">Zip Code</th>
  	<th bgcolor="#FFD5AA">Phone1</th>
  	<th bgcolor="#FFD5AA">Phone2</th>
  	<th bgcolor="#FFD5AA">Fax1</th>
  	<th bgcolor="#FFD5AA">Fax2</th>
  	<th bgcolor="#FFD5AA">Email1</th>
  	<th bgcolor="#FFD5AA">Email2</th>
  </tr>
  
<Form Action="clientdelete.asp" Method=Get>
<%
Do While Not rs.EOF
	Response.Write "<tr><td bgcolor=""#FFFFB3"" align=""center"">"
	%>
	
	<Input Type=Checkbox Name="chk_clients" Value= "<% =CStr(rs.fields("client_id").Value) %>" >
	
	<% 	
	Response.Write "</td>" 
	Response.Write "<td bgcolor=""#FFFFB3"" align=""center"">" %>
	
	<Input Type="Radio" Name="radio_clients" Value= "<% =CStr(rs.fields("client_id").Value) %>" >
	
	<%
	Response.Write "</td>"
	Response.Write "<td bgcolor=""#FFFFB3"">" + CStr(rs.fields("client_id").Value) + "</td>"
	Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("cname").Value + "</td>"
	Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("address").Value + "</td>"
	Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("city").Value + "</td>"
	Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("state_province").Value + "</td>"
	Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("country").Value + "</td>"
	
	If IsNull(rs.fields("zip_code").Value) or trim(rs.fields("zip_code").Value)="" then
		Response.Write "<td bgcolor=""#FFFFB3"">" + "-" + "</td>"
	Else
		Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("zip_code").Value + "</td>"
	End if
	
	If IsNull(rs.fields("phone1").Value) or trim(rs.fields("phone1").Value)="" Then
		Response.Write "<td bgcolor=""#FFFFB3"">" + "-" + "</td>"
	Else
		Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("phone1").Value + "</td>"
	End If
	
	If IsNull(rs.fields("phone2").Value) or trim(rs.fields("phone2").Value)="" Then
		Response.Write "<td bgcolor=""#FFFFB3"">" + "-" + "</td>"
	Else
		Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("phone2").Value + "</td>"
	End If
	
	If IsNull(rs.fields("fax1").Value) or trim(rs.fields("fax1").Value)="" Then
		Response.Write "<td bgcolor=""#FFFFB3"">" + "-" + "</td>"
	Else
		Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("fax1").Value + "</td>"
	End If
	
	If IsNull(rs.fields("fax2").Value) or trim(rs.fields("fax2").Value)="" Then
		Response.Write "<td bgcolor=""#FFFFB3"">" + "-" + "</td>"
	Else
		Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("fax2").Value + "</td>"
	End If
	
	If IsNull(rs.fields("email1").Value) or trim(rs.fields("email1").Value)="" Then
		Response.Write "<td bgcolor=""#FFFFB3"">" + "-" + "</td>"
	Else
		Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("email1").Value + "</td>"
	End If

	If IsNull(rs.fields("email2").Value) or trim(rs.fields("email2").Value)="" Then
		Response.Write "<td bgcolor=""#FFFFB3"">" + "-" + "</td>"
	Else
		Response.Write "<td bgcolor=""#FFFFB3"">" + rs.fields("email2").Value + "</td></tr>"
	End If

	rs.MoveNext
Loop
rs.Close
cn.Close
Set rs = Nothing
Set cn = Nothing
%>
</table>
<p align="center">&nbsp;

    <blockquote>
      <blockquote>
        <blockquote>

<Input Type="SUBMIT" Value="Delete" Name="DeleteIt">
<Input Type="SUBMIT" Value="Update" Name="UpdateIt">

&nbsp;
<p>

</Form>

</p>

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