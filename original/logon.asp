<%

Option Explicit
Dim rs 
Dim vSearchStr

Dim vPreClientId
Dim vPreEmployeeID
%>

<!-- #include file = "connec.asp" -->

<%
Set rs = server.createobject("ADODB.Recordset")

			vSearchStr= "SELECT * FROM security WHERE login= '" + Request.QueryString("login") + "' AND " + _
							"password = '" + Request.QueryString("password") + "'"
												

rs.Open vSearchStr, cn, adOpenStatic, adLockOptimistic

If Not rs.EOF then

rs.Fields("session_id")= Session.SessionID
rs.Update
Response.Redirect("main.asp")

Else
Response.Redirect("failedlogin.html")
End If

rs.close
cn.close
Set rs=Nothing
Set cn=Nothing

%>

