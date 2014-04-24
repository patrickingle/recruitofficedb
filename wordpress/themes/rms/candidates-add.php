<?php
get_header();
?>
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
  if (theForm.project1.value.length > 300)
  {
    alert("Please enter at most 300 characters in the Project1 field.");
    theForm.project1.focus();
    return (false);
  }
  if (theForm.project2.value.length > 300)
  {
    alert("Please enter at most 300 characters in the Project2 field.");
    theForm.project2.focus();
    return (false);
  }
  if (theForm.project3.value.length > 300)
  {
    alert("Please enter at most 300 characters in the Project3 field.");
    theForm.project3.focus();
    return (false);
  }
  if (theForm.other_projects.value.length > 800)
  {
    alert("Please enter at most 800 characters in the Other Projects field.");
    theForm.other_projects.focus();
    return (false);
  }
  if (theForm.certs.value.length > 600)
  {
    alert("Please enter at most 600 characters in the Certification field.");
    theForm.certs.focus();
    return (false);
  }
  if (theForm.other_skills.value.length > 800)
  {
    alert("Please enter at most 800 characters in the Other Skills field.");
    theForm.other_skills.focus();
    return (false);
  }
  if (theForm.os1.value.length > 20)
  {
    alert("Please enter at most 20 characters in the OS1 field.");
    theForm.os1.focus();
    return (false);
  }
if (theForm.os2.value.length > 20)
  {
    alert("Please enter at most 20 characters in the OS2 field.");
    theForm.os2.focus();
    return (false);
  }
if (theForm.os3.value.length > 20)
  {
    alert("Please enter at most 20 characters in the OS3 field.");
    theForm.os3.focus();
    return (false);
  }
if (theForm.lang1.value.length > 20)
  {
    alert("Please enter at most 20 characters in the Lang1 field.");
    theForm.lang1.focus();
    return (false);
  }
if (theForm.lang2.value.length > 20)
  {
    alert("Please enter at most 20 characters in the Lang2 field.");
    theForm.lang2.focus();
    return (false);
  }
if (theForm.lang3.value.length > 20)
  {
    alert("Please enter at most 20 characters in the Lang3 field.");
    theForm.lang3.focus();
    return (false);
  }

 return (true);
}
//--></script>
<p align="center">CANDIDATES INFORMATION</p>
<hr align="center" color="#ff0000" SIZE="4" width="71%">
<blockquote>
  <blockquote>
    <blockquote>
      <blockquote>
        <h3 align="left"><font color="#ff0000" face="Comic Sans MS">Add Record:-</font></h3>
        <form method="POST" action="addcans.asp" onsubmit="return FrontPage_Form1_Validator(this)" name="FrontPage_Form1">
          
          <p align="left"><font color="#FF9933"><u>**********<font face="Comic Sans MS">General
          Information:-</font></u></font></p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#FF0000">First Name:</font> <input type="text" name="f_name" size="20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#FF0000">
          Last Name:</font> <input type="text" name="l_name" size="20"></p>
          <p>Present Address: <input type="text" name="present_address" size="20" value="same as permanent address">&nbsp;&nbsp;&nbsp;&nbsp;
          <font color="#FF0000">Permanent Address:</font> <input type="text" name="perma_address" size="20"></p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <font color="#FF0000">City: </font> <input type="text" name="city" size="20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <font color="#FF0000">State/Province:</font> <input type="text" name="state_province" size="20"></p>
          <p><font color="#FF0000">&nbsp;&nbsp;&nbsp; </font> Country: <select NAME="country" size="1">
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
          </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#000000">
          Zip
          Code: </font><input type="text" name="zip_code" size="20">
          </p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <font color="#000000">Email: </font><input type="text" name="email" size="20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <font color="#000000">Phone: </font> <input type="text" name="phone" size="20"></p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          Fax: <input type="text" name="fax" size="20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          Sex: <select size="1" name="sex">
          <option>F</option>
          <option selected>M</option>
        </select>&nbsp;Married:
        <select size="1" name="married">
          <option>Y</option>
          <option selected>N</option>
        </select></p>
          <p><font color="#FF0000">Max. Basic Education: </font> <input type="text" name="max_edu" size="20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#FF0000">
          Institute: </font> <input type="text" name="max_institute" size="20"></p>
          <p align="left">&nbsp;</p>
          <p align="left"><u><font face="Comic Sans MS" color="#FF9933">**********Computer
          Skills:-</font></u></p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;
          OS1: <input type="text" name="os1" size="14">&nbsp;&nbsp;&nbsp;&nbsp;
          OS2: <input type="text" name="os2" size="14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          OS3: <input type="text" name="os3" size="14"></p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Language1: <input type="text" name="lang1" size="14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          Language2: <input type="text" name="lang2" size="14"></p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Language3: <input type="text" name="lang3" size="14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#FF0000">
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
      </select> </font> </p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Other Skills:&nbsp;</p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <textarea rows="3" name="other_skills" cols="52"></textarea></p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp; Certifications:&nbsp;</p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <textarea rows="2" name="certs" cols="53"></textarea></p>
          <p align="left">&nbsp;</p>
          <p align="left"><u><font face="Comic Sans MS" color="#FF9933">**********Project
          Details:-</font></u></p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Project 1:</p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <textarea rows="2" name="project1" cols="53"></textarea></p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Project 2:</p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <textarea rows="2" name="project2" cols="53"></textarea></p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Project 3:</p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <textarea rows="2" name="project3" cols="53"></textarea></p>
          <p>Other Projects:</p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <textarea rows="2" name="other_projects" cols="53"></textarea></p>
        <p>&nbsp;</p>
        <p><u><font face="Comic Sans MS" color="#FF9933">**********General
        Status:-</font></u></p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Selection Status: <select size="1" name="select_status">
            <option selected>not_approved</option>
            <option>approved</option>
          </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          H1 Status: <select size="1" name="h1_status">
            <option selected>N/A</option>
            <option>processing</option>
            <option>processed</option>
            <option>not_required</option>
          </select></p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Candidate Location: <select size="1" name="can_location">
            <option selected>nHQ</option>
            <option>HQ</option>
          </select></p>
          <p>&nbsp;</p>
          <p><input type="submit" value="Submit" name="B1"> <input type="reset" value="Reset" name="B2"></p>
        </form>
        <p align="left">&nbsp;</p>
      </blockquote>
    </blockquote>
  </blockquote>
</blockquote>

<?php get_footer(); ?>