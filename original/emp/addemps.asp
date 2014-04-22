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
	vSearchStr="select * from employees where emp_id = " + Request.Form("emp_id")
	rs.Open vSearchStr, cn, adOpenStatic, adLockOptimistic
		
Else
		rs.Open "select * from employees" , cn, adOpenStatic, adLockOptimistic
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
	rs.Fields("update_date").Value = Cstr(Date)
	rs.Fields("project1").Value = Request.Form("project1")
   rs.Fields("project2").Value = Request.Form("project2")
   rs.Fields("project3").Value = Request.Form("project3")
	rs.Fields("other_projects").Value = Request.Form("other_projects")
   rs.Fields("job_location").Value = Request.Form("job_location")
   rs.Fields("h1_status").Value = Request.Form("h1_status")
	rs.Fields("social_security").Value = Request.Form("social_security")
   rs.Fields("client_id").Value = CInt(Request.Form("client_id"))
   rs.Fields("max_institute").Value = Request.Form("max_institute")
	

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



