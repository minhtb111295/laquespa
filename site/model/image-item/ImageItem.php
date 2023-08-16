<?php 
class ImageItem {
    public $id;
    public $featured_image;
    public $product_id;

    function __construct($id, $featured_image, $product_id)
    {
        $this->id = $id;
        $this->featured_image = $featured_image;
        $this->product_id = $product_id;
    }
}
?>