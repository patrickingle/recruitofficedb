<% 
option explicit

Dim Dummy
Dim vStr
Dim vFinalStr
Dim vQuery
Dim vUpdateStr
dim rs

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
ElseIf rs.Fields("privilege").Value = "read_only" or (rs.Fields("privilege").Value = "add_update" and _
													Request.QueryString("DeleteIt")="Delete") then
	rs.close
	cn.close
	Set rs=Nothing
	Set cn=Nothing
	Response.Redirect("../noprivilege.html")
Else
	rs.Close
	set rs=Nothing
End If
'--------------------------------------------------------------



vStr=""

if Request.QueryString("DeleteIt")="Delete" then
	if Request.QueryString("chk_can").Count >0 then
		For Dummy=1 to Request.QueryString("chk_can").Count
			vStr =  vStr + Request.QueryString("chk_can")(Dummy) + ", " 
		Next
		vFinalStr = Left(vStr, (Len(vStr)-2))
		vQuery ="delete from candidates where can_id in (" + trim(vFinalStr) + ")"
		cn.Execute vQuery
		Response.Redirect ("../deleteresult.html")
	Else
		Response.Redirect ("../norecords.html")
	end if
End if

if Request.QueryString("UpdateIt")="Update" then
 	if Request.QueryString("radio_can").Count > 0 then
 		vUpdateStr = "canupdate.asp?can_id=" + Request.QueryString("radio_can")
		Response.Redirect (vUpdateStr)	
	Else
 		Response.Redirect ("../norecords.html")
	End if
	
end if

cn.close
set cn=Nothing

%>


