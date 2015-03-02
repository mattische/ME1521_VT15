<?php
class CategoryModel extends BaseModel
{
	function __construct() {
		parent::__construct();
	}

	function getAll() {
		$res = $this->connection->query("SELECT * FROM categories");
		$rows = array();
		while($row = $res->fetch_assoc())
			array_push($rows, $row["name"]);
		return $rows;
	}
}


?>