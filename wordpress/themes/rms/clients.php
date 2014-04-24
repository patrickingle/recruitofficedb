<?php
/**
* Template Name: Clients
*/
get_header();

global $wpdb;

if (current_user_can('rms_admin') || current_user_can('rms_recruiter')) :
	if (isset($_GET['action']) && $_GET['action'] == 'add') :
		include dirname(__FILE__).'/clients-add.php';
	elseif (isset($_GET['action']) && $_GET['action'] == 'search') :
		extract($_POST);
		
	
		switch ($ClientCol) {
			case 'country':
				$vSearchStr= "select * from ".$wpdb->prefix."rms_clients where country like '%" . trim($country) . "%'";
				break;
			case 'client_id':
				if (is_numeric($client_id))
					$vSearchStr= "select * from ".$wpdb->prefix."rms_clients where client_id = 0";
				else
					$vSearchStr= "select * from ".$wpdb->prefix."rms_clients where client_id =" . trim($client_id); 
				break;
			case 'name':
				$vSearchStr= "select * from ".$wpdb->prefix."rms_clients where cname like '%" . trim($name) . "%'";
				break;
			case 'address':
				$vSearchStr= "select * from ".$wpdb->prefix."rms_clients where address like '%" . trim($address) . "%'";
				break;
			case 'city':
				$vSearchStr= "select * from ".$wpdb->prefix."rms_clients where city like '%" . trim($city) . "%'";
				break;
			case 'state_province':
				$vSearchStr= "select * from ".$wpdb->prefix."rms_clients where state_province like '%" . trim($state_province) . "%'";
				break;
			default:
				$vSearchStr= "select * from ".$wpdb->prefix."rms_clients";
		}
	
		$vFinalStr = $vSearchStr . " order by client_id";
		$results = $wpdb->get_results($vFinalStr);
		//echo '<pre>'; print_r($vFinalStr); echo '</pre>';
		include dirname(__FILE__).'/clients-search.php';
	elseif (isset($_GET['action']) && $_GET['action'] == 'save') :
		if ($_POST['choice'] == 'update') {
			$emp_id = $_POST['emp_id'];
		} else {
			extract($_POST);
			$sql = "INSERT INTO ".$wpdb->prefix."rms_clients (cname,address,city,state_province,country,phone1,phone2,fax1,fax2,email1,email2,zip_code) VALUES ('$cname','$address','$city','$state_province','$country','$phone1','$phone2','$fax1','$fax2','$email1','$email2','$zip_code')";
			$result = $wpdb->query($sql);
?>
<blockquote>
  <blockquote>
    <blockquote>
      <h3 align="left"><font face="Comic Sans MS" color="#FF0000">&nbsp;Result:-</font></h3>
      <p align="left">&nbsp;</p>
    </blockquote>
  </blockquote>
</blockquote>

<p align="center">RECORD HAS BEEN SUCCESSFULLY ADDED.</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<blockquote>

<?php
		}
	elseif (isset($_GET['action']) && $_GET['action'] == 'delete') :
	else :
?>
<p align="center">CLIENTS INFORMATION</p>
<hr align="center" width="71%" size="4" color="#FF0000">
<blockquote>
  <blockquote>
    <blockquote>
      <blockquote>
      <h3 align="left"><font face="Comic Sans MS" color="#FF0000">Selection
      Criteria:-</font></h3><center>
      <form method="POST" action="?action=search">
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
                    <td width="49%"><a href="?action=add"><b>Add Record</b></a></td>
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
	endif;
else :
	echo '<center><h1>You are not authorized to access this page!</h1></center>';
endif;

get_footer();
?>