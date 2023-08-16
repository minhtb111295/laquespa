<?php 
class Service {
    public $id;
    public $name;
    public $description;
    public $featured_image;
    public $details;
    public $details_image;
    public $time;
    public $price;
    public $created_date;
    public $category_id;

    function __construct($id, $name, $description, $featured_image, $details, $details_image, $time, $price, $created_date, $category_id)
    {
        $this->id = $id;
        $this->name = $name;
        $this->description = $description;
        $this->featured_image = $featured_image;
        $this->details = $details;
        $this->details_image = $details_image;
        $this->time = $time;
        $this->price = $price;
        $this->created_date = $created_date;
        $this->category_id = $category_id;
    }
}
?>