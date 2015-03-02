<?php
ini_set('display_errors','on');
include("config/includes.php");

$cm = new CategoryController();
$cm->showAll();
?>
