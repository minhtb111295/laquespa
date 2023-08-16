<?php 
class Introduce {
    public $id;
    public $name;
    public $description;
    public $featured_image;
    public $details;
    public $created_date;

    function __construct($id, $name, $description, $featured_image, $details, $created_date) {
        $this->id = $id;
        $this->name = $name;
        $this->description = $description;
        $this->featured_image = $featured_image;
        $this->details = $details;
        $this->created_date = $created_date;
    }
}
?>