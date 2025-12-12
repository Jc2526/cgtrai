<?php
session_start();

$db_host = 'localhost';
$db_username = 'your_username';
$db_password = 'your_password';
$db_name = 'user_authentication';

$conn = mysqli_connect($db_host, $db_username, $db_password, $db_name);

$hashed_password = password_hash($password, PASSWORD_DEFAULT);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $query = "SELECT * FROM users WHERE username='$username'";
    $result = mysqli_query($conn, $query);

    if (mysqli_num_rows($result) == 1) {
        $row = mysqli_fetch_assoc($result);
        if (password_verify($password, $row['password'])) {
            $_SESSION['username'] = $username;
            header("Location: dashboard.php");
            exit();
        } else {
            echo "Incorrect password!";
        }
    } else {
        echo "User not found!";
    }
}
?>
