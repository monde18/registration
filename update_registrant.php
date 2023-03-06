<?php
// Connect to the database
$host = 'localhost'; // Replace with your database host
$username = 'root'; // Replace with your database username
$password = ''; // Replace with your database password
$dbname = 'registration'; // Replace with your database name
$conn = new mysqli($host, $username, $password, $dbname);
if ($conn->connect_error) {
    die('Connection failed: ' . $conn->connect_error);
}

// Update the registrant information
if (!empty($_POST['id']) && !empty($_POST['first_name']) && !empty($_POST['last_name']) && !empty($_POST['business_type']) && !empty($_POST['location']) && !empty($_POST['monthly_rentals']) && !empty($_POST['remarks'])) {
    $id = $_POST['id'];
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $business_type = $_POST['business_type'];
    $location = $_POST['location'];
    $monthly_rentals = $_POST['monthly_rentals'];
    $remarks = $_POST['remarks'];

    $stmt = $conn->prepare("UPDATE registrants SET first_name = ?, last_name = ?, business_type = ?, location = ?, monthly_rentals = ?, remarks = ? WHERE id = ?");
    $stmt->bind_param("ssssisi", $first_name, $last_name, $business_type, $location, $monthly_rentals, $remarks, $id);
    $stmt->execute();

    // Redirect to the registrants table page
    header('Location: tables.php');
}

// Close the database connection
$stmt->close();
$conn->close();
?>
