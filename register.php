<?php

// establish a database connection
include 'db.php';
// Get the form data
$first_name = filter_var($_POST['first-name'], FILTER_SANITIZE_STRING);
$last_name = filter_var($_POST['last-name'], FILTER_SANITIZE_STRING);
$business_type = filter_var($_POST['business-type'], FILTER_SANITIZE_STRING);
$actual_occupant = filter_var($_POST['actual-occupant'], FILTER_SANITIZE_STRING);
$location = filter_var($_POST['location'], FILTER_SANITIZE_STRING);
$stall_rental = filter_var($_POST['stall-rental'], FILTER_SANITIZE_STRING);
$lot_rental = filter_var($_POST['lot-rental'], FILTER_SANITIZE_STRING);
$slaughter_fee = filter_var($_POST['slaughter-fee'], FILTER_SANITIZE_STRING);
$electric_bill = filter_var($_POST['electric-bill'], FILTER_SANITIZE_STRING);
$water_bill = filter_var($_POST['water-bill'], FILTER_SANITIZE_STRING);
$month = filter_var($_POST['month'], FILTER_SANITIZE_STRING);
$month = date('Y-m-d',strtotime($month));
$monthly_rentals = filter_var($_POST['monthly-rentals'], FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_ALLOW_FRACTION);
$remarks = filter_var($_POST['remarks'], FILTER_SANITIZE_STRING);

// Validate the user input
if (empty($first_name) || empty($last_name) || empty($business_type) || empty($actual_occupant) || empty($location)) {
    header("Location: index.php?success=false&message=Missing%20required%20fields");
    exit();
}

$stmt = $conn->prepare("INSERT INTO registrants (first_name, last_name, business_type, actual_occupant, location, stall_rental, lot_rental, slaughter_fee, electric_bill, water_bill, month, monthly_rentals, remarks) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
$stmt->bind_param("sssssssssssss", $first_name, $last_name, $business_type, $actual_occupant, $location, $stall_rental, $lot_rental, $slaughter_fee, $electric_bill, $water_bill, $month, $monthly_rentals, $remarks);
$stmt->execute();

header("Location: index.php?success=true");
exit();

// Close the database connection
$stmt->close();
$conn->close();
