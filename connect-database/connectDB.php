<?php 
$conn = new mysqli(SERVERNAME, USERNAME, PASSWORD, DBNAME);
if ($conn->connect_error) {
    die('Connect Error: ' . $conn->connect_error);
}
mysqli_set_charset($conn, 'utf8');
?>