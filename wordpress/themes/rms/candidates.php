<?php
/**
* Template Name: Candidates
*/
get_header();

if (current_user_can('rms_admin') || current_user_can('rms_recruiter')) :
	if (isset($_GET['action']) && $_GET['action'] == 'add') :
		include dirname(__FILE__).'/candidates-add.php';
	else :
?>
<p align="center">CANDIDATES INFORMATION</p>
<hr align="center" width="71%" size="4" color="#FF0000">
<blockquote>
  <blockquote>
    <blockquote>
      <h3 align="left"><font face="Comic Sans MS" color="#FF0000">Selection
      Criteria:-</font></h3><center>
      <form method="GET" action= "cansearch.asp">
        <table border="0">
          <tr>
            <td width="100%" bgcolor="#FFF9DD" height="641">
              <table border="0" width="674" bgcolor="#FFD8B0">
                <tr>
                  <td width="172">
                    <p>&nbsp;</td>
                  <td width="164">
                    <p>&nbsp;</td>
                  <td width="132">
                    <p>&nbsp;</td>
                  <td width="180">
                    <p>&nbsp;</td>
                </tr>
                <tr>
                  <td width="172">
                    <p><b><input type="radio" value="all" checked name="CanCol">All
                    Candidates</b></p>
                  </td>
                  <td width="164">
                    <p>&nbsp;</p>
                  </td>
                  <td width="132">
                    <p>&nbsp;</p>
                  </td>
                  <td width="180">
                    <p>&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p><b><input type="radio" name="CanCol" value="can_id">Candidate
                    ID:&nbsp;&nbsp;</b></p>
                  </td>
                  <td width="164">
                    <p><b><input type="text" name="can_id" size="20"></b></p>
                  </td>
                  <td width="132">
                    <p>&nbsp;</p>
                  </td>
                  <td width="180">
                    <p>&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p><b><input type="radio" name="CanCol" value="f_name">First
                    Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></p>
                  </td>
                  <td width="164">
                    <p><b><input type="text" name="f_name" size="20"></b></p>
                  </td>
                  <td width="132">
                    <p><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="CanCol" value="l_name">Last
                    Name:</b></p>
                  </td>
                  <td width="180">
                    <p><b><input type="text" name="l_name" size="20"></b></p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p>&nbsp;</p>
                  </td>
                  <td width="164">
                    <p>&nbsp;</p>
                  </td>
                  <td width="132">
                    <p>&nbsp;</p>
                  </td>
                  <td width="180">
                    <p>&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p><b><input type="radio" name="CanCol" value="address">Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></p>
                  </td>
                  <td width="164">
                    <p><b><input type="text" name="address" size="20"></b></p>
                  </td>
                  <td width="132">
                    <p><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="CanCol" value="city">City:</b></p>
                  </td>
                  <td width="180">
                    <p><b><input type="text" name="city" size="20"></b></p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p><b><input type="radio" name="CanCol" value="state_province">State/Province:&nbsp;</b></p>
                  </td>
                  <td width="164"> 
                    <p><b> <input type="text" name="state_province" size="20"></b></p>
                  </td>
                  <td width="132">
                    <p><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="CanCol" value="country">Country:&nbsp;</b></p>
                  </td>
                  <td width="180">
                    <p><b><input type="text" name="country" size="20"></b></p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p><b><input type="radio" name="CanCol" value="sex">Sex:</b></p>
                  </td>
                  <td width="164">
                    <p><b><select size="1" name="sex">
          <option>F</option>
          <option selected>M</option>
        </select></b></p>
                  </td>
                  <td width="132">
                    <p><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="CanCol" value="married">Married:&nbsp;</b></p>
                  </td>
                  <td width="180">
        <p><b>
        <select size="1" name="married">
          <option>Y</option>
          <option selected>N</option>
        </select></b></p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p>&nbsp;</p>
                  </td>
                  <td width="164">
                    <p>&nbsp;</p>
                  </td>
                  <td width="132">
                    <p>&nbsp;</p>
                  </td>
                  <td width="180">
                    <p>&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p><b><input type="radio" name="CanCol" value="max_edu">Max. Basic
        Education:</b></p>
                  </td>
                  <td width="164">
                    <p><b><input type="text" name="max_edu" size="20"></b></p>
                  </td>
                  <td width="132">
                    <p>&nbsp;</p>
                  </td>
                  <td width="180">
                    <p>&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p><b><input type="radio" name="CanCol" value="os">Operating System:&nbsp;</b></p>
                  </td>
                  <td width="164">
                    <p><b><input type="text" name="os" size="20"></b></p>
                  </td>
                  <td width="132">
                    <p><b>&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="CanCol" value="lang">Language:&nbsp;</b></p>
                  </td>
                  <td width="180">
                    <p><b><input type="text" name="lang" size="20"></b></p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p><b><input type="radio" name="CanCol" value="other_skills">Other Skill:&nbsp;</b></p>
                  </td>
                  <td width="164">
                    <p><b><input type="text" name="other_skills" size="20"></b></p>
                  </td>
                  <td width="132">
                    <p><b>&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="CanCol" value="certs">Certification:&nbsp;</b></p>
                  </td>
                  <td width="180"> 
                    <p><b> <input type="text" name="certs" size="20"></b></p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p>&nbsp;</p>
                  </td>
                  <td width="164">
                    <p>&nbsp;</p>
                  </td>
                  <td width="132">
                    <p>&nbsp;</p>
                  </td>
                  <td width="180">
                    <p>&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p><b><input type="radio" name="CanCol" value="update_date">Date:</b></p>
                  </td>
                  <td width="164">
                    <p><b><input type="text" name="submit_date" size="20">
                    (MM/DD/YYYY)</b></p>
                  </td>
                  <td width="132">
                    <p>&nbsp;</p>
                  </td>
                  <td width="180">
                    <p>&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p>&nbsp;</p>
                  </td>
                  <td width="164">
                    <p>&nbsp;</p>
                  </td>
                  <td width="132">
                    <p>&nbsp;</p>
                  </td>
                  <td width="180">
                    <p>&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p><b><input type="radio" name="CanCol" value="select_status">Selection
        Status:&nbsp;</b></p>
                  </td>
                  <td width="164">
                    <p><b><select size="1" name="select_status">
          <option selected>not_approved</option>
          <option>approved</option>
        </select></b></p>
                  </td>
                  <td width="132">
                    <p><b>&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="CanCol" value="h1_status">H1 Status:</b></p>
                  </td>
                  <td width="180">
                    <p><b><select size="1" name="h1_status">
          <option selected>N/A</option>
          <option>processing</option>
          <option>processed</option>
          <option>not_required</option>
        </select></b></p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p><b><input type="radio" name="CanCol" value="can_location">Candidate
        Location:&nbsp;</b></p>
                  </td>
                  <td width="164">
                    <p><b><select size="1" name="can_location">
          <option selected>nHQ</option>
          <option>HQ</option>
        </select></b></p>
                  </td>
                  <td width="132">
                    <p>&nbsp;</p>
                  </td>
                  <td width="180">
                    <p>&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p>&nbsp;</p>
                  </td>
                  <td width="164">
                    <p>&nbsp;</p>
                  </td>
                  <td width="132">
                    <p>&nbsp;</p>
                  </td>
                  <td width="180">
                    <p>&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p>&nbsp;</p>
                  </td>
                  <td width="164">
                    <p>&nbsp;</p>
                  </td>
                  <td width="132">
                    <p>&nbsp;</p>
                  </td>
                  <td width="180">
                    <p>&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="172">
                    <p>&nbsp;<input type="submit" value="Search" name="B1">
                    <input type="reset" value="Reset" name="B2"></p>
                  </td>
                  <td width="164">
                    <p>&nbsp;<a href="?action=add"><b>Add Record</b></a></p>
                  </td>
                  <td width="132">
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                  </td>
                  <td width="180">
                    <p>&nbsp;</p>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </form></center>
    </blockquote>
  </blockquote>
</blockquote>
<?php
	endif;
else :
	echo '<center><h1>You are not authorized to access this page!</h1></center>';
endif;

get_footer();
?>