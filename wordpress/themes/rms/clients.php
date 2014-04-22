<?php
/**
* Template Name: Clients
*/
get_header();
if (current_user_can('rms_admin') || current_user_can('rms_recruiter')) :
?>
<p align="center">CLIENTS INFORMATION</p>
<hr align="center" width="71%" size="4" color="#FF0000">
<blockquote>
  <blockquote>
    <blockquote>
      <blockquote>
      <h3 align="left"><font face="Comic Sans MS" color="#FF0000">Selection
      Criteria:-</font></h3><center>
      <form method="GET" action="clientsearch.asp">
          <table border="0" width="35%" bgcolor="#FFF9DD" height="395">
            <tr>
              <td width="100%" height="391">
                <table border="0" width="100%" bgcolor="#FFD8B0">
                  <tr>
                    <td width="26%">&nbsp;</td>
                    <td width="49%">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="26%"><input type="radio" value="all" checked name="ClientCol"><b>All Clients</b></td>
                    <td width="49%">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="26%"><input type="radio" name="ClientCol" value="client_id"> <b>Client
          ID:</b> &nbsp;</td>
                    <td width="49%"><input type="text" name="client_id" size="20"></td>
                  </tr>
                  <tr>
                    <td width="26%"><input type="radio" name="ClientCol" value="name"><b>Name:
          </b></td>
                    <td width="49%"><input type="text" name="name" size="20"></td>
                  </tr>
                  <tr>
                    <td width="26%">&nbsp;</td>
                    <td width="49%">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="26%"><input type="radio" name="ClientCol" value="address"><b>Address:</b> &nbsp;</td>
                    <td width="49%"> <input type="text" name="address" size="20"></td>
                  </tr>
                  <tr>
                    <td width="26%"><input type="radio" name="ClientCol" value="city"><b>City:&nbsp;</b></td>
                    <td width="49%"><b> <input type="text" name="city" size="20"></b></td>
                  </tr>
                  <tr>
                    <td width="26%"><input type="radio" name="ClientCol" value="state_province"><b>State/Province: </b></td>
                    <td width="49%"><input type="text" name="state_province" size="20"></td>
                  </tr>
                  <tr>
                    <td width="26%"><input type="radio" name="ClientCol" value="country"><b>Country:&nbsp;</b></td>
                    <td width="49%"><b><input type="text" name="country" size="20"></b></td>
                  </tr>
                  <tr>
                    <td width="26%">&nbsp;</td>
                    <td width="49%">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="26%">&nbsp;</td>
                    <td width="49%">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="26%"><input type="submit" value="Search" name="cmdSearch">
                      <input type="reset" value="Reset" name="B2"></td>
                    <td width="49%"><a href="addclient.asp"><b>Add
          Record</b></a></td>
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
<?php
else :
	echo '<center><h1>You are not authorized to access this page!</h1></center>';
	echo '<center><a href="'.home_url().'">Home</a></center>';
endif;

get_footer();
?>