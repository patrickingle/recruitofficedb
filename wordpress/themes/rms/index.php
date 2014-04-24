<?php get_header();?>

<?php
if ( ! is_user_logged_in() ) { // Display WordPress login form:
    $args = array(
        'redirect' => home_url(), 
        'form_id' => 'loginform-custom',
        'label_username' => __( 'User ID' ),
        'label_password' => __( 'Password' ),
        'label_remember' => __( 'Remember Me' ),
        'label_log_in' => __( 'Log In' ),
        'remember' => true
    );
    echo '<center>';
    wp_login_form( $args );
    echo '</center>';
} else { // If logged in:
	require dirname(__FILE__).'/main.php';
}
?>

<?php get_footer(); ?>