<?php
include "db-connect.php";

// get the stall_no from the request
$stall_no = $_GET['stall_no'];

// get the row to be deleted from the database
$sql = "SELECT * FROM registration_form WHERE stall_no=$stall_no";
$result = mysqli_query($conn, $sql);

if (!$result) {
  // redirect to error page with message
  $message = "Error deleting registration data: " . mysqli_error($conn);
  header("Location: error.php?message=" . urlencode($message));
  exit;
}

$row = mysqli_fetch_assoc($result);

// delete the row from the database
$sql = "DELETE FROM registration_form WHERE stall_no=$stall_no";

if (mysqli_query($conn, $sql)) {
  // update the stall_no for all remaining rows in the database
  $sql = "UPDATE registration_form SET stall_no=stall_no-1 WHERE stall_no>{$row['stall_no']}";
  mysqli_query($conn, $sql);

  // redirect to index with success message
  $message = "Registration data deleted successfully.";
  header("Location: index.php?message=" . urlencode($message));
} else {
  // redirect to error page with message
  $message = "Error deleting registration data: " . mysqli_error($conn);
  header("Location: error.php?message=" . urlencode($message));
}

mysqli_close($conn);
?>




