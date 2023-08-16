<?php 
class Product {
    public $id;
    public $name;
    public $price;
    public $discount_percent;
    public $discount_from_date;
    public $discount_to_date;
    public $description;
    public $product_code;
    public $views;
    public $created_date;
    public $featured_image;
    public $category_id;
    public $sale_price;

    function __construct($id, $name, $price, $discount_percent, $discount_from_date, $discount_to_date, $description, $product_code, $views, $created_date, $featured_image, $category_id, $sale_price)
    {
        $this->id = $id;
        $this->name = $name;
        $this->price = $price;
        $this->discount_percent = $discount_percent;
        $this->discount_from_date = $discount_from_date;
        $this->discount_to_date = $discount_to_date;
        $this->description = $description;
        $this->product_code = $product_code;
        $this->views = $views;
        $this->created_date = $created_date;
        $this->featured_image = $featured_image;
        $this->category_id = $category_id;
        $this->sale_price = $sale_price;
    }
}
?>