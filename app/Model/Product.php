<?php
class Product extends AppModel{

	public $useDbConfig = 'default';

	public $useTable = 'products';

	public $primaryKey = 'id';

	function getProductsListByCondition($searchName){
		$productsList=$this->find('all',array('fields'=>array('Brand.brand_id','Brand.brand_name','Category.category_id','Category.category_name','Product.id','Product.name','Product.price','Product.brand_id','Product.spec','Product.spec_unit','Product.stock','Product.image_name','Product.description'),
										      'joins'=>array(
															array('table'=>'brands','alias'=>'Brand', 'type' => 'Left','conditions'=>array('Product.brand_id=Brand.brand_id')),
															array('table'=>'categories','alias'=>'Category','type'=>'Left','conditions'=>array('Product.category_id=Category.category_id'))),
															
										      'conditions'=>array('Product.name  LIKE'=> "%".$searchName."%")));
		return $productsList;
	}
	
	function getProductsListByTypeId($categoryId){
		$productsList=$this->find('all',array('fields'=>array('Brand.brand_id','Brand.brand_name','Category.category_id','Category.category_name','Product.id','Product.name','Product.price','Product.brand_id','Product.spec','Product.spec_unit','Product.stock','Product.image_name','Product.description'),
										      'joins'=>array(
															array('table'=>'brands','alias'=>'Brand', 'type' => 'Left','conditions'=>array('Product.brand_id=Brand.brand_id')),
															array('table'=>'categories','alias'=>'Category','type'=>'Left','conditions'=>array('Product.category_id=Category.category_id'))),
															
										      'conditions'=>array('Product.category_id  ='=> $categoryId)));
		return $productsList;
	}

	function getProductsList(){
		$productsList=$this->find('all',array('fields'=>array('Brand.brand_id','Brand.brand_name','Category.category_id','Category.category_name','Product.id','Product.name','Product.price','Product.brand_id','Product.spec','Product.spec_unit','Product.stock','Product.image_name','Product.description'),
										      'joins'=>array(
															array('table'=>'brands','alias'=>'Brand', 'type' => 'Left','conditions'=>array('Product.brand_id=Brand.brand_id')),
															array('table'=>'categories','alias'=>'Category','type'=>'Left','conditions'=>array('Product.category_id=Category.category_id'))),
										      'conditions'=>array()));

		return $productsList;
	}
}