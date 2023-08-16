<?php
class ProductController
{
    function index()
    {
        $action = new ProductRepository;
        $cond = $_GET['category_id'] ?? NULL;
        if ($cond) {
            $products = $action->getBy($cond);
        } else {
            $products = $action->getAll();
        }
        require 'view/product/index.php';
    }

    function detail(){
        $cond = $_GET['id'];

        // Get Image Item
        $action = new ImageItemRepository;
        $imageItems = $action->getAll($cond);

        $action = new ProductRepository;
        $product = $action->getDetail($cond);

        // Get Product Related
        $productsRelated = $action->getRelated($cond);
        require 'view/product/detail.php';
    }
}
