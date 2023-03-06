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

// Fetch the registrants data from the database
$sql = "SELECT * FROM registrants";
$result = $conn->query($sql);

// Convert the result to an array
$registrants = array();
while ($row = $result->fetch_assoc()) {
    $registrants[] = $row;
}

// Return the result as JSON
header('Content-Type: application/json');
echo json_encode($registrants);

// Close the database connection
$conn->close();
