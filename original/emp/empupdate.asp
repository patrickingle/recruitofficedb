<% 
option explicit

Dim rsEmp 
Dim vSearchStr
Dim rs
Response.Buffer=False
%>

<!-- #include file = "connec.asp" -->

<%

Set rsEmp = server.createobject("ADODB.Recordset")
Set rs = server.createobject("ADODB.Recordset")

'**********************************************************	
'Following code is used for Validating Access to this page.
'**********************************************************		
vSearchStr= "SELECT * FROM security WHERE session_id= '" + CStr(Session.SessionID) + "'"	
	rsEmp.Open vSearchStr, cn, adOpenStatic, adLockOptimistic

If rsEmp.EOF	then
	rsEmp.close
	cn.close
	Set rsEmp = Nothing
	Set cn = Nothing
	Response.Redirect("../login.html")
ElseIf rsEmp.Fields("privilege").Value = "read_only" then
	rsEmp.close
	cn.close
	Set rsEmp=Nothing
	Set cn=Nothing
	Response.Redirect("../noprivilege.html")
ElseIf Request.QueryString.count < 1 or Request.QueryString("emp_id") = "" then
	rsEmp.Fields("session_id").Value = "0"
	rsEmp.update
	rsEmp.close
	cn.close
	Set rsEmp=Nothing
	Set cn=Nothing
	Response.Redirect("../login.html")
Else
	rsEmp.Close
End If
'--------------------------------------------------------------


vSearchStr="select * from employees where emp_id =" + Request.QueryString("emp_id")
rsEmp.Open vSearchStr, cn, adOpenStatic, adLockOptimistic

rs.Open "select client_id from clients", cn, adOpenStatic, adLockOptimistic

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

  if (theForm.f_name.value == "")
  {
    alert("Please enter a value for the First Name field.");
    theForm.f_name.focus();
    return (false);
  }

  if (theForm.f_name.value.length > 30)
  {
    alert("Please enter at most 30 characters in the First Name field.");
    theForm.f_name.focus();
    return (false);
  }
  
  if (theForm.l_name.value == "")
  {
    alert("Please enter a value for the Last Name field.");
    theForm.l_name.focus();
    return (false);
  }

  if (theForm.l_name.value.length > 30)
  {
    alert("Please enter at most 30 characters in the Last Name field.");
    theForm.l_name.focus();
    return (false);
  }

  if (theForm.perma_address.value == "")
  {
    alert("Please enter a value for the Permanent Address field.");
    theForm.perma_address.focus();
    return (false);
  }

  if (theForm.perma_address.value.length > 60)
  {
    alert("Please enter at most 60 characters in the Permanent Address field.");
    theForm.perma_address.focus();
    return (false);
  }
  if (theForm.present_address.value == "")
  {
    alert("Please enter a value for the Permanent Address field.");
    theForm.perma_address.focus();
    return (false);
  }

	if (theForm.present_address.value.length > 60)
  {
    alert("Please enter at most 60 characters in the Present Address field.");
    theForm.present_address.focus();
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
 if (theForm.phone.value.length > 30)
  {
    alert("Please enter at most 30 characters in the Phone field.");
    theForm.phone.focus();
    return (false);
  }
 if (theForm.email.value.length > 50)
  {
    alert("Please enter at most 45 characters in the Email field.");
    theForm.email.focus();
    return (false);
  }
if (theForm.fax.value.length > 50)
  {
    alert("Please enter at most 45 characters in the Fax field.");
    theForm.fax.focus();
    return (false);
  }
  if (theForm.max_edu.value == "")
  {
    alert("Please enter a value for the Max. Basic Education field.");
    theForm.max_edu.focus();
    return (false);
  }

  if (theForm.max_edu.value.length > 50)
  {
    alert("Please enter at most 50 characters in the Max. Basic Education field.");
    theForm.max_edu.focus();
    return (false);
  }
if (theForm.max_institute.value == "")
  {
    alert("Please enter a value for the Institute field.");
    theForm.max_institute.focus();
    return (false);
  }
 
  if (theForm.max_institute.value.length > 60)
  {
    alert("Please enter at most 60 characters in the Institute field.");
    theForm.max_institute.focus();
    return (false);
  }
   if (theForm.social_security.value == "")
  {
    alert("Please enter a value for the Social Security field.");
    theForm.social_security.focus();
    return (false);
  }

  if (theForm.social_security.value.length > 50)
  {
    alert("Please enter at most 50 characters in the Social Security field.");
    theForm.social_security.focus();
    return (false);
  }
 if (theForm.client_id.value.length > 0)
  {
    alert("Please select a value for the State/Province field.");
    theForm.state_province.focus();
    return (false);
  }

 return (true);
}
//--></script>

<h1 align="center"><font color="#0000ff" face="Comic Sans MS">RecruitOffice DB</font>&nbsp;</h1>
<p align="center">EMPLOYEES INFORMATION</p>
<hr align="center" color="#ff0000" SIZE="4" width="71%">
<blockquote>
  <blockquote>
    <blockquote>
      <blockquote>
        <h3 align="left"><font color="#ff0000" face="Comic Sans MS">Update Record:-</font></h3>
        <form method="POST" action="addemps.asp" onsubmit="return FrontPage_Form1_Validator(this)" name="FrontPage_Form1">
          <input type="HIDDEN" name="choice" Value="update" >
			<input type="HIDDEN" name="emp_id" Value="<%=Request.QueryString("emp_id") %>" >
          <p align="left"><font color="#FF9933"><u>**********<font face="Comic Sans MS">General
          Information:-</font></u></font></p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#FF0000">First Name:</font> <input type="text" name="f_name" Value="<% =rsEmp.Fields("f_name").value %>"  size="20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#FF0000">
          Last Name:</font> <input type="text" name="l_name" Value="<% =rsEmp.Fields("l_name").value %>" size="20"></p>
          <p>Present Address: <input type="text" name="present_address" Value="<% =rsEmp.Fields("present_address").value %>" size="20">&nbsp;&nbsp;&nbsp;&nbsp;
          <font color="#FF0000">Permanent Address:</font> <input type="text" name="perma_address" Value="<% =rsEmp.Fields("perma_address").value %>" size="20"></p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <font color="#FF0000">City: </font> <input type="text" name="city" Value="<% =rsEmp.Fields("city").value %>" size="20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <font color="#FF0000">State/Province:</font> <input type="text" name="state_province" Value="<% =rsEmp.Fields("state_province").value %>" size="20"></p>
          <p><font color="#FF0000">&nbsp;&nbsp;&nbsp; Country:</font> <select NAME="country" size="1">
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
          </select>Old: <% =rsEmp.Fields("country").value %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#000000">
          Zip
          Code: </font><input type="text" name="zip_code" Value="<% =rsEmp.Fields("zip_code").value %>" size="20">
          </p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <font color="#000000">Email: </font><input type="text" name="email" Value="<% =rsEmp.Fields("email").value %>" size="20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <font color="#000000">Phone: </font> <input type="text" name="phone" Value="<% =rsEmp.Fields("phone").value %>" size="20"></p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          Fax: <input type="text" name="fax" Value="<% =rsEmp.Fields("fax").value %>" size="20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          Sex: <select size="1" name="sex">
          <option>F</option>
          <option selected>M</option>
        </select>Old: <% =rsEmp.Fields("sex").value %>&nbsp;Married:
        <select size="1" name="married">
          <option>Y</option>
          <option selected>N</option>
        </select>Old: <% =rsEmp.Fields("married").value %></p>
          <p><font color="#FF0000">Max. Basic Education: </font> <input type="text" name="max_edu" Value="<% =rsEmp.Fields("max_edu").value %>" size="20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#FF0000">
          Institute: </font> <input type="text" name="max_institute" Value="<% =rsEmp.Fields("max_institute").value %>" size="20"></p>
          <p align="left">&nbsp;</p>
          <p align="left"><u><font face="Comic Sans MS" color="#FF9933">**********Computer
          Skills:-</font></u></p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;
          OS1: <input type="text" name="os1" Value="<% =rsEmp.Fields("os1").value %>" size="14">&nbsp;&nbsp;&nbsp;&nbsp;
          OS2: <input type="text" name="os2" Value="<% =rsEmp.Fields("os2").value %>" size="14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          OS3: <input type="text" name="os3" Value="<% =rsEmp.Fields("os3").value %>" size="14"></p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Language1: <input type="text" name="lang1" Value="<% =rsEmp.Fields("lang1").value %>" size="14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          Language2: <input type="text" name="lang2" Value="<% =rsEmp.Fields("lang2").value %>" size="14"></p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Language3: <input type="text" name="lang3" Value="<% =rsEmp.Fields("lang3").value %>" size="14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#FF0000">
 </font> 
          Experience (Yrs): <font color="#FF0000">
 <select size="1" name="tot_max_exp">
            <option selected>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            <option>6</option>
            <option>7</option>
            <option>8</option>
            <option>9</option>
            <option>10</option>
            <option>11</option>
            <option>12</option>
            <option>13</option>
            <option>14</option>
            <option>15</option>
            <option>16</option>
            <option>17</option>
            <option>18</option>
            <option>19</option>
            <option>20</option>
            <option>21</option>
			 <option>22</option>
            <option>23</option>
            <option>24</option>
            <option>25</option>
            <option>26</option>
            <option>27</option>
            <option>28</option>
            <option>29</option>
            <option>30</option>
            <option>31</option>
            <option>32</option>
            <option>33</option>
            <option>34</option>
            <option>35</option>
            <option>36</option>
            <option>37</option>
            <option>38</option>
            <option>39</option>
            <option>40</option>
      </select> </font> Old: <% =rsEmp.Fields("tot_max_exp").value %></p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Other Skills:&nbsp;</p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <textarea rows="3" name="other_skills" cols="52"><% =rsEmp.Fields("other_skills").value %></textarea></p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp; Certifications:&nbsp;</p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <textarea rows="2" name="certs" cols="53"><% =rsEmp.Fields("certs").value %></textarea></p>
          <p align="left">&nbsp;</p>
          <p align="left"><u><font face="Comic Sans MS" color="#FF9933">**********Project
          Details:-</font></u></p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Project 1:</p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <textarea rows="2" name="project1" cols="53"><% =rsEmp.Fields("project1").value %></textarea></p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Project 2:</p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <textarea rows="2" name="project2" cols="53"><% =rsEmp.Fields("project2").value %></textarea></p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Project 3:</p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <textarea rows="2" name="project3" cols="53"><% =rsEmp.Fields("project3").value %></textarea></p>
          <p>Other Projects:</p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <textarea rows="2" name="other_projects" cols="53"><% =rsEmp.Fields("other_projects").value %></textarea></p>
        <p>&nbsp;</p>
        <p><u><font face="Comic Sans MS" color="#FF9933">**********General
        Status:-</font></u></p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Job
        Location: <select size="1" name="job_location">
          <option selected>in_office</option>
          <option>out_office</option>
        </select>Old: <% =rsEmp.Fields("job_location").value %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; H1 Status: <select size="1" name="h1_status">
          <option selected>valid</option>
          <option>processing</option>
          <option>expired</option>
          <option>not required</option>
        </select>Old: <% =rsEmp.Fields("h1_status").value %></p>
                  <p>&nbsp;&nbsp;&nbsp; <font color="#FF0000">Social Security:</font> <input type="text" name="social_security" Value="<% =rsEmp.Fields("social_security").value %>" size="20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <font color="#FF0000">Client ID:</font> <select size="1" name="client_id">

<% Do While Not rs.EOF    
       Response.Write "<option>"
       Response.Write rs.Fields("client_id").value
       Response.Write "</option>"
       rs.MoveNext
   Loop
	
rs.Close
Set rs = Nothing
%>

   
          </select>Old: <% =rsEmp.Fields("client_id").value %> </p>
          <p>&nbsp;</p>
          <p><input type="submit" value="Submit" name="B1"> <input type="reset" value="Reset" name="B2"></p>
        </form>
        <p align="left">&nbsp;</p>
      </blockquote>
    </blockquote>
  </blockquote>
</blockquote>
<p align="center">&nbsp;</p>
<p align="center"><b><a href="../main.asp">Home</a> | <a href="../can/cans.asp">Candidates</a>
| <a href="../clients.asp">Clients</a> | </b> <a href="emps.asp"><b>Employees</b></a><b>
| <a href="../users/users.asp">Users</a> | <a href="../spview/spview.asp">Employees
        working with Clients</a> </b></p>
<hr align="center" width="71%" size="4" color="#FF0000">
<p align="center"><font SIZE="4"><b>© </b>2000 takveen. All rights
are reserved.</font></p>
<p align="center">&nbsp;</p>

</body>

</html>


<% 
rsEmp.Close
cn.Close
Set rsEmp = Nothing
Set cn = Nothing
%>