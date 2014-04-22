<% 
option explicit

Dim rs 
Dim vSearchStr

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
ElseIf rs.Fields("privilege").Value = "read_only" then
	rs.close
	cn.close
	Set rs=Nothing
	Set cn=Nothing
	Response.Redirect("../noprivilege.html")
ElseIf Request.Form.count < 12 then
	rs.Fields("session_id").Value = "0"
	rs.update
	rs.close
	cn.close
	Set rs=Nothing
	Set cn=Nothing
	Response.Redirect("../login.html")
Else
	rs.Close
End If
'-----------------------------------------------------------------

	If Request.Form("choice")= "update" then
		vSearchStr="select * from candidates where can_id = " + Request.Form("can_id") 
		rs.Open vSearchStr, cn, adOpenStatic, adLockOptimistic
	Else
		rs.Open "select * from candidates" , cn, adOpenStatic, adLockOptimistic
		rs.AddNew
	End if

  	rs.Fields("f_name").Value = Request.Form("f_name")
	rs.Fields("l_name").Value = Request.Form("l_name")
	rs.Fields("present_address").Value = Request.Form("present_address")
	rs.Fields("perma_address").Value = Request.Form("perma_address")
	rs.Fields("city").Value = Request.Form("city")
	rs.Fields("state_province").Value = Request.Form("state_province")
	rs.Fields("country").Value = Request.Form("country")
	rs.Fields("zip_code").Value = Request.Form("zip_code")
	rs.Fields("phone").Value = Request.Form("phone")
	rs.Fields("email").Value = Request.Form("email")
	rs.Fields("fax").Value = Request.Form("fax")
	rs.Fields("sex").Value = Request.Form("sex")
	rs.Fields("married").Value = Request.Form("married")	
	rs.Fields("max_edu").Value = Request.Form("max_edu")
	rs.Fields("os1").Value = Request.Form("os1")
	rs.Fields("os2").Value = Request.Form("os2")
   rs.Fields("os3").Value = Request.Form("os3")
   rs.Fields("lang1").Value = Request.Form("lang1")
	rs.Fields("lang2").Value = Request.Form("lang2")
   rs.Fields("lang3").Value = Request.Form("lang3")
	rs.Fields("other_skills").Value = Request.Form("other_skills")
	rs.Fields("certs").Value = Request.Form("certs")
   rs.Fields("tot_max_exp").Value = Request.Form("tot_max_exp")
	rs.Fields("submit_date").Value = Date
	rs.Fields("project1").Value = Request.Form("project1")
   rs.Fields("project2").Value = Request.Form("project2")
   rs.Fields("project3").Value = Request.Form("project3")
	rs.Fields("other_projects").Value = Request.Form("other_projects")
   
   rs.Fields("select_status").Value = Request.Form("select_status")
   rs.Fields("h1_status").Value = Request.Form("h1_status")
   	rs.Fields("can_location").Value = Request.Form("can_location")
   rs.Fields("max_institute").Value = Request.Form("max_institute")

If Request.Form("can_location")="HQ" then
	Dim rsEmp

	Set rsEmp = server.createobject("ADODB.Recordset")

	rsEmp.Open "select * from employees" , cn, adOpenStatic, adLockOptimistic
	rsEmp.AddNew

  	rsEmp.Fields("f_name").Value = Request.Form("f_name")
	rsEmp.Fields("l_name").Value = Request.Form("l_name")
	rsEmp.Fields("present_address").Value = Request.Form("present_address")
	rsEmp.Fields("perma_address").Value = Request.Form("perma_address")
	rsEmp.Fields("city").Value = Request.Form("city")
	rsEmp.Fields("state_province").Value = Request.Form("state_province")
	rsEmp.Fields("country").Value = Request.Form("country")
	rsEmp.Fields("zip_code").Value = Request.Form("zip_code")
	rsEmp.Fields("phone").Value = Request.Form("phone")
	rsEmp.Fields("email").Value = Request.Form("email")
	rsEmp.Fields("fax").Value = Request.Form("fax")
	rsEmp.Fields("sex").Value = Request.Form("sex")
	rsEmp.Fields("married").Value = Request.Form("married")	
	rsEmp.Fields("max_edu").Value = Request.Form("max_edu")
	rsEmp.Fields("os1").Value = Request.Form("os1")
	rsEmp.Fields("os2").Value = Request.Form("os2")
   rsEmp.Fields("os3").Value = Request.Form("os3")
   rsEmp.Fields("lang1").Value = Request.Form("lang1")
	rsEmp.Fields("lang2").Value = Request.Form("lang2")
   rsEmp.Fields("lang3").Value = Request.Form("lang3")
	rsEmp.Fields("other_skills").Value = Request.Form("other_skills")
	rsEmp.Fields("certs").Value = Request.Form("certs")
   rsEmp.Fields("tot_max_exp").Value = Request.Form("tot_max_exp")
	rsEmp.Fields("update_date").Value = Date
	rsEmp.Fields("project1").Value = Request.Form("project1")
   rsEmp.Fields("project2").Value = Request.Form("project2")
   rsEmp.Fields("project3").Value = Request.Form("project3")
	rsEmp.Fields("other_projects").Value = Request.Form("other_projects")
	rsEmp.Fields("social_security").Value = "0"
	rsEmp.Fields("max_institute").Value = Request.Form("max_institute")
	rsEmp.Update
	
	rsEmp.Close
	Set rsEmp = Nothing
	
End if
rs.Update

If Request.Form("choice")= "update" then
	Response.Redirect("../updateresult.html")
Else
	Response.Redirect("../addresult.html")
End if

rs.Close
cn.Close
Set rs = Nothing
Set cn = Nothing
%>



