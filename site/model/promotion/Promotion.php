<?php 
class Promotion {
    public $id;
    public $featured_image;

    function __construct($id, $featured_image)
    {
       $this->id = $id;
       $this->featured_image = $featured_image; 
    }
}
?>