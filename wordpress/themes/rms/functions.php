<?php


add_action('wp_login','rms_wp_login', 10, 2);

function rms_wp_login($user_login, $user) {
	foreach($user->roles as $role) {
		switch($role) {
			case 'rms_admin':
			case 'rms_recruiter':
			case 'rms_guest':
				wp_redirect(home_url(),301);
				exit;
		}
	}
}

?>