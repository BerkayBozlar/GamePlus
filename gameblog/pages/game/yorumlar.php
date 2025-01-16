<?php
$host = "localhost";
$user = "root";
$pass = "";
$db = "GamePlus";

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Bağlantı hatası: " . $conn->connect_error);
}

$sql = "SELECT * FROM comments ORDER BY created_at DESC";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <title>YORUMLAR</title>
</head>
<body>
    <h1>YORUMLAR</h1>
    <?php
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo "<p><strong>" . htmlspecialchars($row['username']) . ":</strong> " . htmlspecialchars($row['comment']) . "</p><hr>";
        }
    } else {
        echo "<p>Henüz yorum yapılmadı.</p>";
    }
    $conn->close();
    ?>
</body>
</html>

