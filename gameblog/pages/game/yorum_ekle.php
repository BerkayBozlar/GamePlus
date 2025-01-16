<?php
$host = "localhost";
$user = "root";
$pass = "";
$db = "GamePlus";

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Bağlantı hatası: " . $conn->connect_error);
}

$username = "berkay";
$comment = $_POST['comment'];


$sql = "INSERT INTO comments (username, comment) VALUES ('$username', '$comment')";

if ($conn->query($sql) === TRUE) {
    header("Location: " . $_SERVER['HTTP_REFERER']);  
    exit();
} else {
    echo "Hata: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
