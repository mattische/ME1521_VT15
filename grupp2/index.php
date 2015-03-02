<?php
ini_set('display_errors','on');

$r = new mysqli("localhost", "root", "cbRu8_=w", "world");

$res = $r->query("SELECT * FROM City LIMIT 0, 20");

while($row = $res->fetch_assoc())
	echo $row["Name"] . "<br>";
?>
