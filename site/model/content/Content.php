<?php 
class Content {
    public $id;
    public $name;
    public $description;
    public $featured_image;
    public $details;
    public $post_id;

    function __construct($id, $name, $description, $featured_image, $details, $post_id)
    {
        $this->id = $id;
        $this->name = $name;
        $this->description = $description;
        $this->featured_image = $featured_image;
        $this->details = $details;
        $this->post_id = $post_id;
    }
}
?>