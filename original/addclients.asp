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
	Response.Redirect("login.html")
ElseIf rs.Fields("privilege").Value = "read_only" then
	rs.close
	cn.close
	Set rs=Nothing
	Set cn=Nothing
	Response.Redirect("noprivilege.html")
ElseIf Request.Form.count < 5 then
	rs.Fields("session_id").Value = "0"
	rs.update
	rs.close
	cn.close
	Set rs=Nothing
	Set cn=Nothing
	Response.Redirect("login.html")
Else
	rs.Close
End If
'--------------------------------------------------------------------------------


If Request.Form("choice")= "update" then
	vSearchStr="select * from clients where client_id =" + Request.Form("client_id")
	rs.Open vSearchStr, cn, adOpenStatic, adLockOptimistic

Else
	rs.Open "select * from clients" , cn, adOpenStatic, adLockOptimistic
	rs.AddNew
End if

	rs.Fields("cname").Value = Request.Form("cname")
	rs.Fields("address").Value = Request.Form("address")
	rs.Fields("city").Value = Request.Form("city")
	rs.Fields("state_province").Value = Request.Form("state_province")
	rs.Fields("country").Value = Request.Form("country")
	rs.Fields("phone1").Value = Request.Form("phone1")
	rs.Fields("phone2").Value = Request.Form("phone2")
	rs.Fields("fax1").Value = Request.Form("fax1")
	rs.Fields("fax2").Value = Request.Form("fax2")
	rs.Fields("email1").Value = Request.Form("email1")
	rs.Fields("email2").Value = Request.Form("email2")
	rs.Fields("zip_code").Value = Request.Form("zip_code")

rs.Update

If Request.Form("choice")= "update" then
	Response.Redirect("updateresult.html")
Else
	Response.Redirect("addresult.html")
End if

rs.Close
cn.Close
Set rs = Nothing
Set cn = Nothing
%>


