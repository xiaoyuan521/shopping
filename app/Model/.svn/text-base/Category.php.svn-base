<?php
class Category extends AppModel{
	public $useDbConfig = 'default';

	public $useTable = 'categories';

	public $primaryKey = 'category_id';

	function getCategory(){
		$categoryData=$this->find('all',array('fields'=>array('category_id','category_name'),
										      'conditions'=>array()));

		return $categoryData;
	}
}