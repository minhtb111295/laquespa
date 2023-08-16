<?php 
class Banner {
    public $id;
    public $name;
    public $featured_image;

    function __construct($id, $name, $featured_image)
    {
        $this->id = $id;
        $this->name = $name;
        $this->featured_image = $featured_image;
    }
}
?>