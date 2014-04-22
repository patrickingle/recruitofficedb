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
ElseIf Request.QueryString.count < 1 or Request.QueryString("client_id") = "" then
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
'--------------------------------------------------------------

vSearchStr="select * from clients where client_id =" + Request.QueryString("client_id")

rs.Open vSearchStr, cn, adOpenStatic, adLockOptimistic

%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>RecruitOffice DB</title>
<style><!--
a { font-weight: bold; text-decoration: none }
a:hover { font-weight: bold; text-decoration: underline }-->
a:hover{color:red;}
                </style>

</head>
<body>

<script Language="JavaScript"><!--
function FrontPage_Form1_Validator(theForm)
{

  if (theForm.cname.value == "")
  {
    alert("Please enter a value for the Name field.");
    theForm.cname.focus();
    return (false);
  }

  if (theForm.cname.value.length > 60)
  {
    alert("Please enter at most 60 characters in the Name field.");
    theForm.cname.focus();
    return (false);
  }

  if (theForm.address.value == "")
  {
    alert("Please enter a value for the Address field.");
    theForm.address.focus();
    return (false);
  }

  if (theForm.address.value.length > 60)
  {
    alert("Please enter at most 60 characters in the Address field.");
    theForm.address.focus();
    return (false);
  }

  if (theForm.city.value == "")
  {
    alert("Please enter a value for the City field.");
    theForm.city.focus();
    return (false);
  }

  if (theForm.city.value.length > 30)
  {
    alert("Please enter at most 30 characters in the City field.");
    theForm.city.focus();
    return (false);
  }

  if (theForm.state_province.value == "")
  {
    alert("Please enter a value for the State/Province field.");
    theForm.state_province.focus();
    return (false);
  }

  if (theForm.state_province.value.length > 30)
  {
    alert("Please enter at most 30 characters in the State/Province field.");
    theForm.state_province.focus();
    return (false);
  }

  
  if (theForm.zip_code.value.length > 15)
  {
    alert("Please enter at most 15 characters in the Zip Code field.");
    theForm.zip_code.focus();
    return (false);
  }
 if (theForm.phone1.value.length > 40)
  {
    alert("Please enter at most 40 characters in the Phone1 field.");
    theForm.phone1.focus();
    return (false);
  }
 if (theForm.phone2.value.length > 40)
  {
    alert("Please enter at most 40 characters in the Phone2 field.");
    theForm.phone2.focus();
    return (false);
  }
 if (theForm.fax1.value.length > 40)
  {
    alert("Please enter at most 40 characters in the Fax1 field.");
    theForm.fax1.focus();
    return (false);
  }

 if (theForm.fax2.value.length > 40)
  {
    alert("Please enter at most 40 characters in the Fax2 field.");
    theForm.fax2.focus();
    return (false);
  }

 if (theForm.email1.value.length > 45)
  {
    alert("Please enter at most 45 characters in the Email1 field.");
    theForm.email1.focus();
    return (false);
  }
 if (theForm.email2.value.length > 45)
  {
    alert("Please enter at most 45 characters in the Email2 field.");
    theForm.email2.focus();
    return (false);
  }

  return (true);
}
//--></script>
<h1 align="center"><font face="Comic Sans MS" color="#0000FF">RecruitOffice DB</font>&nbsp;</h1>
<p align="center">CLIENTS INFORMATION</p>
<hr align="center" width="71%" size="4" color="#FF0000">
<blockquote>
  <blockquote>
    <blockquote>
      <blockquote>
      <h3 align="left"><font face="Comic Sans MS" color="#FF0000">Update Record:-</font></h3>
      
	<form method="POST" action="addclients.asp" onsubmit="return FrontPage_Form1_Validator(this)" name="FrontPage_Form1">
       	<blockquote>
        	<blockquote>
        <input type="HIDDEN" name="choice" Value="update" >
        <input type="HIDDEN" name="client_id" Value="<%=Request.QueryString("client_id") %>" >
        	<p align="left"><font color="#FF0000">Name: </font>
        <input type="text" name="cname" size="28" tabindex="1" Value="<% =rs.Fields("cname").value %>" >&nbsp;</p>
          	<p align="left"><font color="#FF0000">Address: </font>
        <input type="text" name="address" size="40" Value="<% =rs.Fields("address").value %>"></p>
          <p align="left"><font color="#FF0000">City: </font>
        <input type="text" name="city" size="21" Value="<% =rs.Fields("city").value %>"></p>
          <p align="left"><font color="#FF0000">State/Province: </font>
        <input type="text" name="state_province" size="21" Value="<% =rs.Fields("state_province").value %>"></p>
          <p align="left"><font color="#FF0000">Country:</font>
        <select NAME="country" size="1">
            <option selected>Pakistan</option>
		
								<option>Afghanistan</option>
		
								<option>Albania</option>
		
								<option>Algeria</option>
		
								<option>Andorra</option>
		
								<option>Angola</option>
		
								<option>Anguilla</option>
		
								<option>Antigua and Barbuda</option>
		
								<option>Argentina</option>
		
								<option>Armenia</option>
		
								<option>Aruba</option>
		
								<option>Australia</option>
		
								<option>Austria</option>
		
								<option>Azerbaijan</option>
		
								<option>Bangladesh</option>
		
								<option>Barbados</option>
		
								<option>Belarus</option>
		
								<option>Belgium</option>
		
								<option>Belize</option>
		
								<option>Benin</option>
		
								<option>Bermuda</option>
		
								<option>Bhutan</option>
		
								<option>Bolivia</option>
		
								<option>Bosnia and Herzegovina</option>
		
								<option>Botswana</option>
		
								<option>Brazil</option>
		
								<option>British Virgin Islands</option>
		
								<option>Brunei</option>
		
								<option>Bulgaria</option>
		
								<option>Burkina Faso</option>
		
								<option>Burma</option>
		
								<option>Burundi</option>
		
								<option>Cambodia</option>
		
								<option>Canada</option>
		
								<option>Cape Verde</option>
		
								<option>Cayman Islands</option>
		
								<option>Central African Republic</option>
		
								<option>Chad</option>
		
								<option>Chile</option>
		
								<option>China</option>
		
								<option>Colombia</option>
		
								<option>Comoros</option>
		
								<option>Congo</option>
		
								<option>Costa Rica</option>
		
								<option>Croatia</option>
		
								<option>Cuba</option>
		
								<option>Cyprus</option>
		
								<option>Czech Republic</option>
		
								<option>Denmark</option>
		
								<option>Djibouti</option>
		
								<option>Dominica</option>
		
								<option>Dominican Republic</option>
		
								<option>Ecuador</option>
		
								<option>Egypt</option>
		
								<option>El Salvador</option>
		
								<option>Equatorial Guinea</option>
		
								<option>Eritrea</option>
		
								<option>Estonia</option>
		
								<option>Ethiopia</option>
		
								<option>Fiji</option>
		
								<option>Finland</option>
		
								<option>France</option>
		
								<option>French Guiana</option>
		
								<option>French Polynesia</option>
		
								<option>Gabon</option>
		
								<option>Germany</option>
		
								<option>Ghana</option>
		
								<option>Greece</option>
		
								<option>Greenland</option>
		
								<option>Grenada</option>
		
								<option>Guadeloupe</option>
		
								<option>Guatemala</option>
		
								<option>Guinea</option>
		
								<option>Guinea-Bissau</option>
		
								<option>Guyana</option>
		
								<option>Haiti</option>
		
								<option>Honduras</option>
		
								<option>Hong Kong</option>
		
								<option>Hungary</option>
		
								<option>Iceland</option>
		
								<option>India</option>
		
								<option>Indonesia</option>
		
								<option>Iran</option>
		
								<option>Iraq</option>
		
								<option>Ireland</option>
		
								<option>Israel</option>
		
								<option>Italy</option>
		
								<option>Ivory Coast </option>
		
								<option>Jamaica</option>
		
								<option>Japan</option>
		
								<option>Jordan</option>
		
								<option>Kazakstan</option>
		
								<option>Kenya</option>
		
								<option>Kiribati</option>
		
								<option>Kuwait</option>
		
								<option>Kyrgyzstan</option>
		
								<option>Laos</option>
		
								<option>Latvia</option>
		
								<option>Lebanon</option>
		
								<option>Lesotho</option>
		
								<option>Liberia</option>
		
								<option>Libya</option>
		
								<option>Liechtenstein</option>
		
								<option>Lithuania</option>
		
								<option>Luxembourg</option>
		
								<option>Macau</option>
		
								<option>Madagascar</option>
		
								<option>Malawi</option>
		
								<option>Malaysia</option>
		
								<option>Mali</option>
		
								<option>Malta</option>
		
								<option>Marshall Islands</option>
		
								<option>Martinique</option>
		
								<option>Mauritania</option>
		
								<option>Mauritius</option>
		
								<option>Mayotte</option>
		
								<option>Mexico</option>
		
								<option>Moldova</option>
		
								<option>Monaco</option>
		
								<option>Mongolia</option>
		
								<option>Monteserrat</option>
		
								<option>Morocco</option>
		
								<option>Mozambique</option>
		
								<option>Namibia</option>
		
								<option>Nauru</option>
		
								<option>Nepal</option>
		
								<option>Netherlands</option>
		
								<option>Netherlands Antilles</option>
		
								<option>New Caledonia</option>
		
								<option>New Zealand</option>
		
								<option>Nicaragua</option>
		
								<option>Niger</option>
		
								<option>Nigeria</option>
		
								<option>North Korea</option>
		
								<option>Norway</option>
		
								<option>Oman</option>
		
								<option>Palau</option>
		
								<option>Panama</option>
		
								<option>Papua New Guinea</option>
		
								<option>Paraguay</option>
		
								<option>Peru</option>
		
								<option>Philippines</option>
		
								<option>Poland</option>
		
								<option>Portugal</option>
		
								<option>Qatar</option>
		
								<option>Republic of Georgia</option>
		
								<option>Reunion</option>
		
								<option>Romania</option>
		
								<option>Russia</option>
		
								<option>Rwanda</option>
		
								<option>Saint Helena</option>
		
								<option>Saint Kitts and Nevis</option>
		
								<option>Saint Lucia</option>
		
							
								<option>San Marino</option>
		
								<option>Sao Tome and Principe</option>
		
								<option>Saudi Arabia</option>
		
								<option>Senegal</option>
		
								<option>Serbia and Montenegro</option>
		
								<option>Seychelles</option>
		
								<option>Sierra Leone</option>
		
								<option>Singapore</option>
		
								<option>Slovakia</option>
		
								<option>Slovenia</option>
		
								<option>Solomon Islands</option>
		
								<option>Somalia</option>
		
								<option>South Africa</option>
		
								<option>South Korea</option>
		
								<option>Spain</option>
		
								<option>Sri Lanka</option>
		
								<option>Sudan</option>
		
								<option>Suriname</option>
		
								<option>Swaziland</option>
		
								<option>Sweden</option>
		
								<option>Switzerland</option>
		
								<option>Syria</option>
		
								<option>Taiwan</option>
		
								<option>Tajikistan</option>
		
								<option>Tanzania</option>
		
								<option>Thailand</option>
		
								<option>The Bahamas</option>
		
								<option>The Gambia</option>
		
								<option>Togo</option>
		
								<option>Tonga</option>
		
								<option>Trinidad and Tobago</option>
		
								<option>Tunisia</option>
		
								<option>Turkey</option>
		
								<option>Turkmenistan</option>
		
								<option>Turks and Caicos Islands</option>
		
								<option>Tuvalu</option>
		
								<option>Uganda</option>
		
								<option>Ukraine</option>
		
								<option>United Arab Emirates</option>
		
								<option>United Kingdom</option>

								<option>United States</option>

								<option>Uruguay</option>
		
								<option>Uzbekistan</option>
		
								<option>Vanuatu</option>
		
								<option>Vatican City</option>
		
								<option>Venezuela</option>
		
								<option>Vietnam</option>
		
								<option>Wallis and Futuna</option>
		
								<option>Western Sahara</option>
		
								<option>Western Samoa</option>
		
								<option>Yemen</option>
		
								<option>Zaire</option>
		
								<option>Zambia</option>
		
								<option>Zimbabwe</option>
          </select>
                  Previous Value: <% =rs.Fields("country").value %></p>
                <p align="left">Zip/Postal Code: 
             <input type="text" name="zip_code" size="20" Value="<% =rs.Fields("zip_code").value %>" ></p>
                <p align="left">Phone1: 
             <input type="text" name="phone1" size="17" Value="<% =rs.Fields("phone1").value %>" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Phone2: 
             <input type="text" name="phone2" size="18" Value="<% =rs.Fields("phone2").value %>" ></p>
                <p align="left">Fax1:&nbsp;&nbsp;&nbsp;&nbsp; 
             <input type="text" name="fax1" size="17" Value="<% =rs.Fields("fax1").value %>" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Fax2: 
             <input type="text" name="fax2" size="18" Value="<% =rs.Fields("fax2").value %>" ></p>
                <p align="left">Email1:&nbsp; 
             <input type="text" name="email1" size="17" Value="<% =rs.Fields("email1").value %>" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Email2: 
             <input type="text" name="email2" size="18" Value="<% =rs.Fields("email2").value %>" ></p>
                <p align="left">&nbsp;</p>
              <blockquote>
                <p align="left"><input type="submit" value="Submit" name="B1"> <input type="reset" value="Reset" name="B2"></p>
                <p align="left">&nbsp;</p>
       
      </form>
      <p align="left">&nbsp;</p>
      <blockquote>
        <blockquote>
              
              </blockquote>
        </blockquote>
      </blockquote>



        </blockquote>
       </blockquote>



<p align="center"><b><a href="main.asp">Home</a> | <a href="can/cans.asp">Candidates</a>
| <a href="clients.asp">Clients</a> | </b> <a href="emp/emps.asp"><b>Employees</b></a><b>
| <a href="users/users.asp">Users</a> | <a href="spview/spview.asp">Employees
        working with Clients</a>  &nbsp;</b></p>
      </blockquote>
    </blockquote>
  </blockquote>



<hr align="center" width="71%" size="4" color="#FF0000">
<p align="center"><font SIZE="4"><b>© </b>2000 takveen. All rights
are reserved.</font></p>
<p align="center">&nbsp;</p>

</body>

</html>

<% 
rs.Close
cn.Close
Set rs = Nothing
Set cn = Nothing
%>