<?php 
class HomeController {
    function index() {
        // Get Catalog Service
        $action = new CategoryServiceRepository;
        $categoryServices = $action->getAll();

        // Get Services by Category ID
        global $categoryId;
        $action = new ServiceRepository;
        $services = $action->getAll();

        require 'view/home/index.php';
    }
}
?>