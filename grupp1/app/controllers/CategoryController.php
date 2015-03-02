<?php
class CategoryController
{

	private $model;

	function __construct() {
		$this->model = new CategoryModel();
	}

	function showAll() {
		$result = $this->model->getAll();
		print_r($result);
		$this->model->close();
	}

}
?>