
<?php
App::uses('AppController', 'Controller');
class ProductsController extends AppController
{
	public $uses = array('Product','Brand','Category');

	//获取产品一览
	public function index(){
		$products = null;
		if (isset($this->request->query['searchName'])&& $this->request->query['searchName'] != ""){
			$searchName= $this->request->query['searchName'];
			$products=$this->Product->getProductsListByCondition($searchName);
		}elseif (isset($this->request->query['categoryId'])&& $this->request->query['categoryId'] != ""){
			$categoryId= $this->request->query['categoryId'];
			$products=$this->Product->getProductsListByTypeId($categoryId);
		}else {
			$products=$this->Product->getProductsList();
		}
		$this->set(compact('products'));

	}

}