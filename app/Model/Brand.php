<?php
class Brand extends AppModel{

	public $useDbConfig = 'default';

	public $useTable = 'brands';

	public $primaryKey = 'brand_id';

	function getBrand(){
		$brandData=$this->find('all',array('fields'=>array('brand_id','brand_name'),
										      'conditions'=>array()));

		return $brandData;
	}
}