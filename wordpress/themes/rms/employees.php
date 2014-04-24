<?php
/**
* Template Name: Employees
*/

get_header();
if (current_user_can('rms_admin') || current_user_can('rms_recruiter')) :
	if (isset($_GET['action']) && $_GET['action'] == 'add') :
		include dirname(__FILE__).'/employees-add.php';
	elseif (isset($_GET['action']) && $_GET['action'] == 'save') :
		if ($_POST['choice'] == 'update') {
			$emp_id = $_POST['emp_id'];
		} else {
			
		}
	elseif (isset($_GET['action']) && $_GET['action'] == 'delete') :
	else :
?>
<p align="center">EMPLOYEES INFORMATION</p>
<hr align="center" width="71%" size="4" color="#FF0000">
<blockquote>
  <blockquote>
      <h3 align="left"><font face="Comic Sans MS" color="#FF0000">Selection
      Criteria:-</font></h3>
      <form method="GET" action= "empsearch.asp">
        <div align="center">
          <center>
        <table border="0" height="672">
          <tr>
            <td height="668" bgcolor="#FFF9DD">
              <div align="center">
              <table border="0" width="672" bgcolor="#FFD8B0">
                <tr>
                  <td width="176">
                    &nbsp;
                  </td>
                  <td width="170">
                    &nbsp;
                  </td>
                  <td width="146">
                    &nbsp;
                  </td>
                  <td width="154">
                    &nbsp;
                  </td>
                </tr>
                <tr>
                  <td width="176">
                    <p align="left"><b><input type="radio" value="all" checked name="EmpCol">All Employees</b></p>
                  </td>
                  <td width="170">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="146">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="154">
                    <p align="left">&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="176">
                    <p align="left"><b><input type="radio" name="EmpCol" value="emp_id">Employee ID:&nbsp;</b></p>
                  </td>
                  <td width="170">
                    <p align="left"><b><input type="text" name="emp_id" size="20"></b></p>
                  </td>
                  <td width="146">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="154">
                    <p align="left">&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="176">
                    <p align="left"><b><input type="radio" name="EmpCol" value="f_name">First Name:
                    &nbsp;</b></p>
                  </td>
                  <td width="170"> 
                    <p align="left"> <b> <input type="text" name="f_name" size="20"></b></p>
                  </td>
                  <td width="146">
                    <p align="left"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="EmpCol" value="l_name">Last Name:</b></p>
                  </td>
                  <td width="154">
                    <p align="left"><b><input type="text" name="l_name" size="20"></b></p>
                  </td>
                </tr>
                <tr>
                  <td width="176">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="170">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="146">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="154">
                    <p align="left">&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="176">
                    <p align="left"><b><input type="radio" name="EmpCol" value="address">Address:</b></p>
                  </td>
                  <td width="170">
                    <p align="left"><b><input type="text" name="address" size="20"></b></p>
                  </td>
                  <td width="146">
                    <p align="left"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="EmpCol" value="city">City:</b></p>
                  </td>
                  <td width="154">
                    <p align="left"><b><input type="text" name="city" size="20"></b></p>
                  </td>
                </tr>
                <tr>
                  <td width="176">
                    <p align="left"><b><input type="radio" name="EmpCol" value="state_province">State/Province:&nbsp;</b></p>
                  </td>
                  <td width="170">
                    <p align="left"><b><input type="text" name="state_province" size="20"></b></p>
                  </td>
                  <td width="146">
                    <p align="left"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="EmpCol" value="country">Country:&nbsp;</b></p>
                  </td>
                  <td width="154"> 
                    <p align="left"> <b> <input type="text" name="country" size="20"></b></p>
                  </td>
                </tr>
                <tr>
                  <td width="176">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="170">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="146">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="154">
                    <p align="left">&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="176">
                    <p align="left"><b><input type="radio" name="EmpCol" value="sex">Sex:</b></p>
                  </td>
                  <td width="170"> 
                    <p align="left"> <b> <select size="1" name="sex">
          <option>F</option>
          <option selected>M</option>
        </select></b></p>
                  </td>
                  <td width="146">
                    <p align="left"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="EmpCol" value="married">Married:&nbsp;</b></p>
                  </td>
                  <td width="154">
                    <p align="left"><b><select size="1" name="married">
          <option>Y</option>
          <option selected>N</option>
        </select></b></p>
                  </td>
                </tr>
                <tr>
                  <td width="176">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="170">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="146">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="154">
                    <p align="left">&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="176">
                    <p align="left"><b><input type="radio" name="EmpCol" value="max_edu">Max. Basic Education:</b></p>
                  </td>
                  <td width="170"> 
                    <p align="left"> <b> <input type="text" name="max_edu" size="20"></b></p>
                  </td>
                  <td width="146">
                    <p align="left"><b><input type="radio" name="EmpCol" value="os">Operating System:</b></p>
                  </td>
                  <td width="154"> 
                    <p align="left"> <b> <input type="text" name="os" size="20"></b></p>
                  </td>
                </tr>
                <tr>
                  <td width="176">
                    <p align="left"><b><input type="radio" name="EmpCol" value="lang">Language:</b></p>
                  </td>
                  <td width="170"> 
                    <p align="left"> <b> <input type="text" name="lang" size="20"></b></p>
                  </td>
                  <td width="146">
                    <p align="left"><b><input type="radio" name="EmpCol" value="other_skills">Other Skill:&nbsp;</b></p>
                  </td>
                  <td width="154">
                    <p align="left"><b><input type="text" name="other_skills" size="20"></b></p>
                  </td>
                </tr>
                <tr>
                  <td width="176">
                    <p align="left"><b><input type="radio" name="EmpCol" value="certs">Certification:&nbsp;</b></p>
                  </td>
                  <td width="170"> 
                    <p align="left"> <b> <input type="text" name="certs" size="20"></b></p>
                  </td>
                  <td width="146">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="154">
                    <p align="left">&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="176">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="170">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="146">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="154">
                    <p align="left">&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="176">
                    <p align="left"><b><input type="radio" name="EmpCol" value="update_date">Date:</b></p>
                  </td>
                  <td width="170">
                    <p align="left"><b><input type="text" name="update_date" size="20">
                    (MM/DD/YYYY)</b></p>
                  </td>
                  <td width="146">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="154">
                    <p align="left">&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="176">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="170">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="146">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="154">
                    <p align="left">&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="176">
                    <p align="left"><b><input type="radio" name="EmpCol" value="job_location">Job
        Location:&nbsp;</b></p>
                  </td>
                  <td width="170"> 
                    <p align="left"> <b> <select size="1" name="job_location">
          <option selected>in_office</option>
          <option>out_office</option>
        </select></b></p>
                  </td>
                  <td width="146">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="154">
                    <p align="left">&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="176">
                    <p align="left"><b><input type="radio" name="EmpCol" value="h1_status">H1 Status:&nbsp;</b></p>
                  </td>
                  <td width="170"> 
                    <p align="left"> <b> <select size="1" name="h1_status">
          <option selected>valid</option>
          <option>processing</option>
          <option>expired</option>
          <option>not required</option>
        </select></b></p>
                  </td>
                  <td width="146">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="154">
                    <p align="left">&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="176">
                    <p align="left"><b><input type="radio" name="EmpCol" value="social_security">Social Security:</b></p>
                  </td>
                  <td width="170">
                    <p align="left"><b><input type="text" name="social_security" size="20"></b></p>
                  </td>
                  <td width="146">
                    <p align="left"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="EmpCol" value="client_id">Client ID:&nbsp;</b></p>
                  </td>
                  <td width="154"> 
                    <p align="left"> <b> <input type="text" name="client_id" size="20"></b></p>
                  </td>
                </tr>
                <tr>
                  <td width="176">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="170">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="146">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="154">
                    <p align="left">&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="176">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="170">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="146">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="154">
                    <p align="left">&nbsp;</p>
                  </td>
                </tr>
                <tr>
                  <td width="176">
                    <p align="left"><b><input type="submit" value="Search" name="B1"> 
                    <input type="reset" value="Reset" name="B2"></b></p>
                  </td>
                  <td width="170">
                    <p align="left"><a href="?action=add"><b>Add Record</b></a></p>
                  </td>
                  <td width="146">
                    <p align="left">&nbsp;</p>
                  </td>
                  <td width="154">
                    <p align="left">&nbsp;</p>
                  </td>
                </tr>
              </table>
              </div>
            </td>
          </tr>
        </table>
          </center>
        </div>
      </form>
  </blockquote>
</blockquote>
<?php
	endif;
else :
	echo '<center><h1>You are not authorized to access this page!</h1></center>';
endif;

get_footer();
?>