<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "dtdm";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
$ID = $_POST['id'];
$Name = $_POST['name'];


$sql = "UPDATE loaisanpham SET `tenloai` = '$Name' Where `id_loai` = '$ID'";

if ($conn->query($sql) === TRUE) {
    echo "Record updated successfully";
} else {
    echo "Error updating record: " . $conn->error;
}

$conn->close();
?>
<a href="index.php">Ve trang quan tri</a>