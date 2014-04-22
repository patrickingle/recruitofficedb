<%
Dim cn, cst 

Const adOpenStatic = 3
Const adOpenForwardOnly = 0

Const adLockOptimistic=3


    cst = "Provider=Microsoft.Jet.OLEDB.4.0;" & _ 
        "Data Source=" & Server.MapPath("../mydb/dbrms.mdb") 
 
    set cn = CreateObject("ADODB.Connection") 
    cn.open cst 
%>



