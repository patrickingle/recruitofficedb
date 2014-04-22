<% 
option explicit

Dim Dummy
Dim vStr
Dim vFinalStr
Dim vQuery
Dim vUpdateStr
Dim rs

Response.Buffer=False
%>

<!-- #include file = "connec.asp" -->

<%

Set rs = server.createobject("ADODB.Recordset")

'**********************************************************	
'Following code is used for Validating Access to this page.
'**********************************************************		
vQuery= "SELECT * FROM security WHERE session_id= '" + CStr(Session.SessionID) + "'"	
	rs.Open vQuery, cn, adOpenStatic, adLockOptimistic

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
	Set rs=Nothing
End if
'-----------------------------------------------------------------

vStr=""

if Request.QueryString("DeleteIt")="Delete" then
	if Request.QueryString("chk_user").Count >0 then
		For Dummy=1 to Request.QueryString("chk_user").Count
			vStr =  vStr + Request.QueryString("chk_user")(Dummy) + ", " 
		Next
		vFinalStr = Left(vStr, (Len(vStr)-2))
		vQuery ="delete from security where user_id in (" + trim(vFinalStr) + ")"
		cn.Execute vQuery
		Response.Redirect ("../deleteresult.html")
	Else
		Response.Redirect ("../norecords.html")
	end if
End if

if Request.QueryString("UpdateIt")="Update" then
 	if Request.QueryString("radio_user").Count > 0 then
 		vUpdateStr = "userupdate.asp?user_id=" + Request.QueryString("radio_user")
		Response.Redirect (vUpdateStr)	
	Else
 		Response.Redirect ("../norecords.html")
	End if
	
end if

cn.close
set cn=Nothing

%>


