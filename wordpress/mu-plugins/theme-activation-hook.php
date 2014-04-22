<?php

add_action('switch_theme','rms_switch_theme');

function rms_switch_theme($new_name, $new_theme='') {
    if (isset($_GET['action']) && $_GET['action'] == 'activate') {
		if (isset($_GET['stylesheet']) && $_GET['stylesheet'] == 'rms') {
			rms_create_tables();
		}
	}        
}

function rms_create_tables() {
	global $wpdb;
	
	$sql = "CREATE TABLE IF NOT EXISTS `".$wpdb->prefix."rms_candidates` (
  `can_id` int(2) DEFAULT NULL,
  `f_name` varchar(6) DEFAULT NULL,
  `l_name` varchar(8) DEFAULT NULL,
  `present_address` varchar(25) DEFAULT NULL,
  `perma_address` varchar(22) DEFAULT NULL,
  `city` varchar(9) DEFAULT NULL,
  `state_province` varchar(8) DEFAULT NULL,
  `country` varchar(11) DEFAULT NULL,
  `zip_code` int(3) DEFAULT NULL,
  `phone` int(9) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `fax` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `married` varchar(1) DEFAULT NULL,
  `max_edu` varchar(5) DEFAULT NULL,
  `os1` varchar(3) DEFAULT NULL,
  `os2` varchar(6) DEFAULT NULL,
  `os3` varchar(7) DEFAULT NULL,
  `lang1` varchar(11) DEFAULT NULL,
  `lang2` varchar(7) DEFAULT NULL,
  `lang3` varchar(5) DEFAULT NULL,
  `other_skills` varchar(53) DEFAULT NULL,
  `certs` varchar(6) DEFAULT NULL,
  `tot_max_exp` int(1) DEFAULT NULL,
  `select_status` varchar(12) DEFAULT NULL,
  `submit_date` int(5) DEFAULT NULL,
  `project1` varchar(20) DEFAULT NULL,
  `project2` varchar(12) DEFAULT NULL,
  `project3` varchar(8) DEFAULT NULL,
  `other_projects` varchar(15) DEFAULT NULL,
  `h1_status` varchar(10) DEFAULT NULL,
  `can_location` varchar(3) DEFAULT NULL,
  `max_institute` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;";

	$wpdb->query($sql);

	$sql = "CREATE TABLE IF NOT EXISTS `".$wpdb->prefix."rms_clients` (
  `client_id` int(2) DEFAULT NULL,
  `cname` varchar(16) DEFAULT NULL,
  `address` varchar(32) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  `state_province` varchar(9) DEFAULT NULL,
  `country` varchar(13) DEFAULT NULL,
  `phone1` varchar(11) DEFAULT NULL,
  `fax1` varchar(10) DEFAULT NULL,
  `email1` varchar(17) DEFAULT NULL,
  `phone2` varchar(10) DEFAULT NULL,
  `fax2` varchar(10) DEFAULT NULL,
  `email2` varchar(10) DEFAULT NULL,
  `zip_code` int(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;";
	$wpdb->query($sql);

	$sql = "CREATE TABLE IF NOT EXISTS `".$wpdb->prefix."rms_employees` (
  `emp_id` int(2) DEFAULT NULL,
  `f_name` varchar(10) DEFAULT NULL,
  `l_name` varchar(9) DEFAULT NULL,
  `present_address` varchar(25) DEFAULT NULL,
  `perma_address` varchar(18) DEFAULT NULL,
  `city` varchar(9) DEFAULT NULL,
  `state_province` varchar(8) DEFAULT NULL,
  `country` varchar(13) DEFAULT NULL,
  `zip_code` int(3) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `fax` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `married` varchar(1) DEFAULT NULL,
  `max_edu` varchar(10) DEFAULT NULL,
  `os1` varchar(3) DEFAULT NULL,
  `os2` varchar(6) DEFAULT NULL,
  `os3` varchar(7) DEFAULT NULL,
  `lang1` varchar(11) DEFAULT NULL,
  `lang2` varchar(7) DEFAULT NULL,
  `lang3` varchar(6) DEFAULT NULL,
  `other_skills` varchar(53) DEFAULT NULL,
  `certs` varchar(6) DEFAULT NULL,
  `tot_max_exp` int(1) DEFAULT NULL,
  `update_date` int(5) DEFAULT NULL,
  `project1` varchar(20) DEFAULT NULL,
  `project2` varchar(12) DEFAULT NULL,
  `project3` varchar(8) DEFAULT NULL,
  `other_projects` varchar(15) DEFAULT NULL,
  `job_location` varchar(9) DEFAULT NULL,
  `h1_status` varchar(5) DEFAULT NULL,
  `social_security` varchar(9) DEFAULT NULL,
  `client_id` int(2) DEFAULT NULL,
  `max_institute` varchar(26) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;";
	$wpdb->query($sql);
	
	add_role('rms_admin','RMS Admin',array('rms_admin' => true));
	add_role('rms_recruiter','RMS Recruiter',array('rms_add_update' => true,'rms_add_can'=>true,'rms_add_emp'=>true));
	add_role('rms_guest','RMS Guest',array('rms_read_only' => true));
	
	global $user_ID;
	
	$page = array(
		'post_type' => 'page',
		'post_content' => '',
		'post_parent' => 0,
		'post_author' => $user_ID,
		'post_status' => 'publish',
		'post_name' => 'users',
		'post_title' => 'users',
		'page_template' => 'users.php'
	);
	wp_insert_post($page);

	$page = array(
		'post_type' => 'page',
		'post_content' => '',
		'post_parent' => 0,
		'post_author' => $user_ID,
		'post_status' => 'publish',
		'post_name' => 'can',
		'post_title' => 'can',
		'page_template' => 'candidates.php'
	);
	wp_insert_post($page);

	$page = array(
		'post_type' => 'page',
		'post_content' => '',
		'post_parent' => 0,
		'post_author' => $user_ID,
		'post_status' => 'publish',
		'post_name' => 'clients',
		'post_title' => 'clients',
		'page_template' => 'clients.php'
	);
	wp_insert_post($page);

	$page = array(
		'post_type' => 'page',
		'post_content' => '',
		'post_parent' => 0,
		'post_author' => $user_ID,
		'post_status' => 'publish',
		'post_name' => 'emp',
		'post_title' => 'emp',
		'page_template' => 'employees.php'
	);
	wp_insert_post($page);

	$page = array(
		'post_type' => 'page',
		'post_content' => '',
		'post_parent' => 0,
		'post_author' => $user_ID,
		'post_status' => 'publish',
		'post_name' => 'spview',
		'post_title' => 'spview',
		'page_template' => 'special-view.php'
	);
	wp_insert_post($page);
}
?>