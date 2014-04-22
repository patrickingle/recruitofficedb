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
ElseIf rs.Fields("privilege").Value <> "admin" then
	rs.close
	cn.close
	Set rs=Nothing
	Set cn=Nothing
	Response.Redirect("../noprivilege.html")
ElseIf Request.Form.count < 2 then
	rs.Fields("session_id").Value = "0"
	rs.update
	rs.close
	cn.close
	Set rs=Nothing
	Set cn=Nothing
	Response.Redirect("../login.html")

Else
	rs.close
End if
'-----------------------------------------------------------------


	If Request.Form("choice")= "update" then
		vSearchStr="select * from security where user_id = " + Request.Form("user_id")
		rs.Open vSearchStr, cn, adOpenStatic, adLockOptimistic
	Else
		rs.Open "select * from security" , cn, adOpenStatic, adLockOptimistic
		rs.AddNew
	End if

  	rs.Fields("login").Value = Request.Form("login")
	rs.Fields("password").Value = Request.Form("password")
	rs.Fields("privilege").Value = Request.Form("privilege")
	
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
