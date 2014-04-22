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
	Response.Redirect("login.html")
Else
	rs.Fields("session_id").Value = "0"
	rs.update
	rs.close
	cn.close
	Set rs=Nothing
	Set cn=Nothing
	Response.Redirect("login.html")

End If

%>

