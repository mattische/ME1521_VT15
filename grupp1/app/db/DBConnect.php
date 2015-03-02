<?php
define("DB_HOST", "localhost");


define("MYSQL_USER", "grupp1");
define("MYSQL_PWD", "grupp1");
define("MYSQL_DB", "grupp1");



class DBConnect
{
  function __construct() {
  }

  function connect() {
  	return new mysqli(DB_HOST, MYSQL_USER, MYSQL_PWD, MYSQL_DB);
  }


}

?>
