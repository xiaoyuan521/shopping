<?php
class CategoriesController extends AppController {

    public $name = 'Categories';
    public $layout = 'category';

    public function index() {

        $this->set('categories', $this->Category->find('all', array (
                'conditions' => array (
                        'parent_id' => NULL
                )
        )));

        if ($this->request->is('ajax')) {
            $categoryId = $this->request->data['categoryId'];
            $this->set('subCategories', $this->Category->find('all', array (
                    'conditions' => array (
                            'parent_id' => $categoryId
                    )
            )));
        } else {
            $this->set('subCategories', $this->Category->find('all', array (
                    'conditions' => array (
                            'parent_id' => '1'
                    )
            )));
        }
    }
}