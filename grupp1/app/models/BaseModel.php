<?php

class BaseModel
{
	protected $database;
	protected $connection;
	
	function __construct() {
		$this->database = new DBConnect();
		$this->connection = $this->database->connect();
	}

	function getConnection() {
		return $this->connection;
	}

	function close() {
		$this->connection->close();
	}
}


?>