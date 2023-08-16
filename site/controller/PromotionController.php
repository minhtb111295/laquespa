<?php 
class PromotionController {
    function index() {
        $action = new PromotionRepository;
        $promotions = $action->getAll();
        
        require 'view/promotion/index.php';
    }
}
?>