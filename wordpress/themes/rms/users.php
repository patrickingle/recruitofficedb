<?php
/*
	Template Name: Users
*/
get_header();

if (current_user_can('rms_admin')) :
	if (isset($_GET['action']) && $_GET['action'] == 'add') :
		include dirname(__FILE__).'/users-add.php';
	else :
?>
<p align="center">USERS INFORMATION</p>
<hr align="center" width="71%" size="4" color="#FF0000">
<blockquote>
  <blockquote>
    <blockquote>
      <blockquote>
      <h3 align="left"><font face="Comic Sans MS" color="#FF0000">Selection
      Criteria:-</font></h3>
      <blockquote><center>
        <form method="GET" action="usersearch.asp">
          
          <table border="0" bgcolor="#FFF9DD">
            <tr>
              <td width="322" height="268" align="left">
                <table border="0" width="100%" bgcolor="#FFD8B0">
                  <tr>
                    <td width="42%">
                      <p align="left">&nbsp;</td>
                    <td width="58%">
                      <p align="left">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="42%">
                      <p align="left"><b>&nbsp;&nbsp; <input type="radio" value="all" checked name="SecurityCol">All
          Logins</b></p>
                    </td>
                    <td width="58%">
                      <p align="left">&nbsp;</p>
                    </td>
                  </tr>
                  <tr>
                    <td width="42%">
                      <p align="left"><b>&nbsp;&nbsp; <input type="radio" name="SecurityCol" value="login">Login:&nbsp;</b></p>
                    </td>
                    <td width="58%">
                      <p align="left"><input type="text" name="login" size="20"></p>
                    </td>
                  </tr>
                  <tr>
                    <td width="42%">
                      <p align="left"><b>&nbsp;&nbsp; <input type="radio" name="SecurityCol" value="password">Password:&nbsp;</b></p>
                    </td>
                    <td width="58%">
                      <p align="left"> <input name="password" size="20"></p>
                    </td>
                  </tr>
                  <tr>
                    <td width="42%">
                      <p align="left"><b>&nbsp;&nbsp; <input type="radio" name="SecurityCol" value="privilege">Privilege:&nbsp;</b></p>
                    </td>
                    <td width="58%">
                      <p align="left">
          <select size="1" name="privilege">
            <option selected>add_update</option>
            <option>read_only</option>
            <option>admin</option>
          </select></p>
                    </td>
                  </tr>
                  <tr>
                    <td width="42%">
                      <p align="left">&nbsp;</p>
                    </td>
                    <td width="58%">
                      <p align="left">&nbsp;</p>
                    </td>
                  </tr>
                  <tr>
                    <td width="42%">
                      <p align="left">&nbsp;</p>
                    </td>
                    <td width="58%">
                      <p align="left">&nbsp;</p>
                    </td>
                  </tr>
                  <tr>
                    <td width="42%">
                      <p align="left"><input type="submit" value="Submit" name="B1"> 
                      <input type="reset" value="Reset" name="B2">
                      </p>
                    </td>
                    <td width="58%">
                      <p align="left"><b><a href="?action=add">Add Record</a></b></p>
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
  </blockquote>
</blockquote>
<?php 
	endif;
else :
	echo '<center><h1>You are not authorized to access this page!</h1></center>';
endif;
get_footer(); 
?>