<?php

?>
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
<table border="1" width="100%">
  <tr>
  	<th bgcolor="#FFD5AA">Delete</th>
  	<th bgcolor="#FFD5AA">Update</th>
  	<th bgcolor="#FFD5AA">ID</th>
  	<th bgcolor="#FFD5AA">Name</th>
  	<th bgcolor="#FFD5AA">Address</th>
  	<th bgcolor="#FFD5AA">City</th>
  	<th bgcolor="#FFD5AA">State/Province</th>
  	<th bgcolor="#FFD5AA">Country</th>
  	<th bgcolor="#FFD5AA">Zip Code</th>
  	<th bgcolor="#FFD5AA">Phone1</th>
  	<th bgcolor="#FFD5AA">Phone2</th>
  	<th bgcolor="#FFD5AA">Fax1</th>
  	<th bgcolor="#FFD5AA">Fax2</th>
  	<th bgcolor="#FFD5AA">Email1</th>
  	<th bgcolor="#FFD5AA">Email2</th>
  </tr>
  
<Form Action="?action=delete" Method="post">
<?php
foreach ($results as $result) {
?>
	<tr><td bgcolor="#FFFFB3" align="center">
	
	<input Type=checkbox Name="chk_clients" Value= "<?php echo $client_id; ?>" >
	
	 	
	</td> 
	<td bgcolor="#FFFFB3" align="center"> 
	
	<input Type="radio" Name="radio_clients" Value= "<?php echo $client_id; ?>" >
	

	</td>
<?php
	echo '<td bgcolor="#FFFFB3">'  . $result->client_id .  '</td>';
	echo '<td bgcolor="#FFFFB3">'  . $result->cname .  '</td>';
	echo '<td bgcolor="#FFFFB3">'  . $result->address .  '</td>';
	echo '<td bgcolor="#FFFFB3">'  . $result->city .  '</td>';
	echo '<td bgcolor="#FFFFB3">'  . $result->state_province .  '</td>';
	echo '<td bgcolor="#FFFFB3">'  . $result->country .  '</td>';
	
	if (is_null($result->zip_code) || trim($result->zip_code)=="")
		echo '<td bgcolor="#FFFFB3">'  .  '-'  .  '</td>';
	else
		echo '<td bgcolor="#FFFFB3">'  . $result->zip_code .  '</td>';
	
	
	if (is_null($result->phone1) || trim($result->phone1)=="")
		echo '<td bgcolor="#FFFFB3">'  .  '-'  .  '</td>';
	else
		echo '<td bgcolor="#FFFFB3">'  . $result->phone1 .  '</td>';
	
	
	if (is_null($result->phone2) || trim($result->phone2)=="") 
		echo '<td bgcolor="#FFFFB3">'  .  '-'  .  '</td>';
	else
		echo '<td bgcolor="#FFFFB3">'  . $result->phone2 .  '</td>';
	
	
	if (is_null($result->fax1) || trim($result->fax1)=="") 
		echo '<td bgcolor="#FFFFB3">'  .  '-'  .  '</td>';
	else
		echo '<td bgcolor="#FFFFB3">'  . $result->fax1 .  '</td>';
	
	if (is_null($result->fax2) || trim($result->fax2)==="")
		echo '<td bgcolor="#FFFFB3">'  .  '-'  .  '</td>';
	else
		echo '<td bgcolor="#FFFFB3">'  . $result->fax2 .  '</td>';
	
	if (is_null($result->email1) || trim($result->email1)=="")
		echo '<td bgcolor="#FFFFB3">'  .  '-'  .  '</td>';
	else
		echo '<td bgcolor="#FFFFB3">'  . $result->email1 .  '</td>';
	
	if (is_null($result->email2) || trim($result->email2)=="")
		echo '<td bgcolor="#FFFFB3">'  .  '-'  .  '</td>';
	else
		echo '<td bgcolor="#FFFFB3">'  . $result->email2 .  '</td></tr>';
}
?>
</table>
<p align="center">&nbsp;

    <blockquote>
      <blockquote>
        <blockquote>

<Input Type="SUBMIT" Value="Delete" Name="DeleteIt">
<Input Type="SUBMIT" Value="Update" Name="UpdateIt">

&nbsp;
<p>

</Form>

</p>

        </blockquote>
      </blockquote>
    </blockquote>
