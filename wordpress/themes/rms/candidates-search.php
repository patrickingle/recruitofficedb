<?php

?>
	<p align="center">CANDIDATES INFORMATION</p>
	<hr align="center" width="71%" size="4" color="#FF0000">
 		<blockquote>
      	<blockquote>
	    <blockquote>
       <blockquote>
       <h3 align="left"><font face="Comic Sans MS" color="#FF0000">Result:-</font></h3>
		</blockquote>
		</blockquote>
		</blockquote>
		</blockquote>
    <div align="center">
      <center>
<table border="1" width="100%">
  <tr>
  	<th bgcolor="#FFD5AA">Delete</th>
  	<th bgcolor="#FFD5AA">Update</th>
  	<th bgcolor="#FFD5AA">ID</th>
  	<th bgcolor="#FFD5AA">First Name</th>
  	<th bgcolor="#FFD5AA">Last Name</th>
  	<th bgcolor="#FFD5AA">Present Address</th>
  	<th bgcolor="#FFD5AA">Permanent Address</th>
  	<th bgcolor="#FFD5AA">City</th>
  	<th bgcolor="#FFD5AA">State/Province</th>
  	<th bgcolor="#FFD5AA">Country</th>
  	<th bgcolor="#FFD5AA">Zip Code</th>
  	<th bgcolor="#FFD5AA">Phone</th>
  	<th bgcolor="#FFD5AA">Email</th>
  	<th bgcolor="#FFD5AA">Fax</th>
  	<th bgcolor="#FFD5AA">Sex</th>
  	<th bgcolor="#FFD5AA">Married</th>
  	<th bgcolor="#FFD5AA">Max Education</th>
  	<th bgcolor="#FFD5AA">Institute</th>
  	<th bgcolor="#FFD5AA">OS1</th>
  	<th bgcolor="#FFD5AA">OS2</th>
  	<th bgcolor="#FFD5AA">OS3</th>
  	<th bgcolor="#FFD5AA">Lang1</th>
  	<th bgcolor="#FFD5AA">Lang2</th>
  	<th bgcolor="#FFD5AA">Lang3</th>
  	<th bgcolor="#FFD5AA">Other Skills</th>
  	<th bgcolor="#FFD5AA">Certification</th>
  	<th bgcolor="#FFD5AA">Max Experience</th>
	<th bgcolor="#FFD5AA">Date</th>
  	<th bgcolor="#FFD5AA">Project1</th>
  	<th bgcolor="#FFD5AA">Project2</th>
  	<th bgcolor="#FFD5AA">Project3</th>
  	<th bgcolor="#FFD5AA">Other Projects</th>
  	<th bgcolor="#FFD5AA">Selection Status</th>
  	<th bgcolor="#FFD5AA">H1 Status</th>
  	<th bgcolor="#FFD5AA">Can Location</th>
</tr>

<Form Action="?action=delete" Method="post">
<?php
foreach($results as $rs) {
	echo '<tr><td bgcolor="#FFFFB3" align="center">';
	
	echo '<Input Type=Checkbox Name="chk_can" Value= "' . $rs->can_id . '" >';
	 	
	echo "</td>"; 
	echo '<td bgcolor="#FFFFB3" align="center">'; 
	echo '<Input Type="Radio" Name="radio_can" Value= "' . $rs->can_id . '" >';
	echo "</td>";
	echo '<td bgcolor="#FFFFB3">' . $rs->can_id . "</td>";
	echo '<td bgcolor="#FFFFB3">' . $rs->f_name . "</td>";
	echo '<td bgcolor="#FFFFB3">' . $rs->l_name . "</td>";
	echo '<td bgcolor="#FFFFB3">' . trim($rs->present_address) . "</td>";
	echo '<td bgcolor="#FFFFB3">' . trim($rs->perma_address) . "</td>";
	echo '<td bgcolor="#FFFFB3">' . $rs->city . "</td>";
	echo '<td bgcolor="#FFFFB3">' . $rs->state_province . "</td>";
	echo '<td bgcolor="#FFFFB3">' . $rs->country . "</td>";
	
	if (is_null($rs->zip_code) || trim($rs->zip_code)=="") 
		echo '<td bgcolor="#FFFFB3">' . "-" . "</td>";
	else
		echo '<td bgcolor="#FFFFB3">' . $rs->zip_code . "</td>";
	
	
	if (is_null($rs->phone) || trim($rs->phone)=="") 
		echo '<td bgcolor="#FFFFB3">' . "-" . "</td>";
	else
		echo '<td bgcolor="#FFFFB3">' . $rs->phone . "</td>";
	
	if (is_null($rs->email) || trim($rs->email)=="") 
		echo '<td bgcolor="#FFFFB3">' . "-" . "</td>";
	else
		echo '<td bgcolor="#FFFFB3">' . $rs->email . "</td>";
	
	if (is_null($rs->fax) || trim($rs->fax)=="") 
		echo '<td bgcolor="#FFFFB3">' . "-" . "</td>";
	else
		echo '<td bgcolor="#FFFFB3">' . $rs->fax . "</td>";
	
	
	echo '<td bgcolor="#FFFFB3">' . $rs->sex . "</td>";
	echo '<td bgcolor="#FFFFB3">' . $rs->married . "</td>";
	echo '<td bgcolor="#FFFFB3">' . $rs->max_edu . "</td>";
	echo '<td bgcolor="#FFFFB3">' . $rs->max_institute . "</td>";

	if (is_null($rs->os1) || trim($rs->os1)=="")
		echo '<td bgcolor="#FFFFB3">' . "-" . "</td>";
	else
		echo '<td bgcolor="#FFFFB3">' . $rs->os1 . "</td>";
	
	if (is_null($rs->os2) || trim($rs->os2)=="")
		echo '<td bgcolor="#FFFFB3">' . "-" . "</td>";
	else
		echo '<td bgcolor="#FFFFB3">' . $rs->os2 . "</td>";
	
	if (is_null($rs->os3) || trim($rs->os3)=="")
		echo '<td bgcolor="#FFFFB3">' . "-" . "</td>";
	else
		echo '<td bgcolor="#FFFFB3">' . $rs->os3 . "</td>";
	
	if (is_null($rs->lang1) || trim($rs->lang1)=="")
		echo '<td bgcolor="#FFFFB3">' . "-" . "</td>";
	else
		echo '<td bgcolor="#FFFFB3">' . $rs->lang1 . "</td>";
	
	if (is_null($rs->lang2) || trim($rs->lang2)=="")
		echo '<td bgcolor="#FFFFB3">' . "-" . "</td>";
	else
		echo '<td bgcolor="#FFFFB3">' . $rs->lang2 . "</td>";
	
	if (is_null($rs->lang3) || trim($rs->lang3)=="")
		echo '<td bgcolor="#FFFFB3">' . "-" . "</td>";
	else
		echo '<td bgcolor="#FFFFB3">' . $rs->lang3 . "</td>";
	
	if (is_null($rs->other_skills) || trim($rs->other_skills)=="")
		echo '<td bgcolor="#FFFFB3">' . "-" . "</td>";
	else
		echo '<td bgcolor="#FFFFB3">' . trim($rs->other_skills) . "</td>";

	if (is_null($rs->certs) || trim($rs->certs)=="")
		echo '<td bgcolor="#FFFFB3">' . "-" . "</td>";
	else
		echo '<td bgcolor="#FFFFB3">' . trim($rs->certs) . "</td>";
	
	
	echo '<td bgcolor="#FFFFB3">' . $rs->tot_max_exp . "</td>";
	echo '<td bgcolor="#FFFFB3">' . $rs->submit_date . "</td>";

	if (is_null($rs->project1) || trim($rs->project1)=="")
		echo '<td bgcolor="#FFFFB3">' . "-" . "</td>";
	else
		echo '<td bgcolor="#FFFFB3">' . trim($rs->project1) . "</td>";

	if (is_null($rs->project2) || trim($rs->project2)=="")
		echo '<td bgcolor="#FFFFB3">' . "-" . "</td>";
	else
		echo '<td bgcolor="#FFFFB3">' . trim($rs->project2) . "</td>";

	if (is_null($rs->project3) || trim($rs->project3)=="")
		echo '<td bgcolor="#FFFFB3">' . "-" . "</td>";
	else
		echo '<td bgcolor="#FFFFB3">' . trim($rs->project3) . "</td>";

	if (is_null($rs->other_projects) || trim($rs->other_projects)=="")
		echo '<td bgcolor="#FFFFB3">' . "-" + "</td>";
	else
		echo '<td bgcolor="#FFFFB3">' . trim($rs->other_projects) . "</td>";
		
	echo '<td bgcolor="#FFFFB3">' . trim($rs->select_status) . "</td>";
	echo '<td bgcolor="#FFFFB3">' . $rs->h1_status . "</td>";
	echo '<td bgcolor="#FFFFB3">' . $rs->can_location . "</td>";
		
}

?>
</table>
      </center>
    </div>
<p align="center">&nbsp;

    <blockquote>
      <blockquote>
        <blockquote>

<Input Type="SUBMIT" Value="Delete" Name="DeleteIt">
<Input Type="SUBMIT" Value="Update" Name="UpdateIt">

</Form>

        </blockquote>
      </blockquote>
    </blockquote>

