<?php
session_start();

// Display success message if it exists in the session variable
if (isset($_SESSION['success_message'])) {
    echo '<div class="alert alert-success" role="alert">' . $_SESSION['success_message'] . '</div>';
    unset($_SESSION['success_message']); // Remove the message from the session variable
}

// Display error message if it exists in the session variable
if (isset($_SESSION['error_message'])) {
    echo '<div class="alert alert-danger" role="alert">' . $_SESSION['error_message'] . '</div>';
    unset($_SESSION['error_message']); // Remove the message from the session variable
}
?>

<!-- Your registration form HTML code goes here -->
