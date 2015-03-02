<?php
echo "APA";



$m = new DBCon();
$m = $m->getCon();
$res = $m->query("SELECT * FROM recepies");
while($row = $res->fetch_assoc())
  echo $row["name"] . "<br>";

//$m->close();


class DBCon {
 private $_host = "localhost";
 private $_user = "blog";
 private $_pwd = "blog";
 private $_db = "blog";

  private $con;

  function __construct() {
    $this->con = new mysqli($this->_host, $this->_user, $this->_pwd, $this->_db);
    
  }


  function getCon() {
    return $this->con;
  }

  function close() {
    $this->con->close();
  }

}


?>
