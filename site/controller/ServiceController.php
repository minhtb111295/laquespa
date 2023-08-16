<?php
class ServiceController
{
    function index()
    {
        $page = PAGE;
        $item_per_page = ITEM_PER_PAGE;
        $cond = $_GET['category_id'] ?? NULL;

        $action = new ServiceRepository;

        if ($cond) {
            $services = $action->getBy($cond, $page, $item_per_page);
            // Get Rows
            $getAllServices = $action->getBy($cond);
            $totalRows = count($getAllServices);
        } else {
            $services = $action->getAll($page, $item_per_page);
            // Get Rows
            $getAllServices = $action->getAll();
            $totalRows = count($getAllServices);
        }

        // Get Number of Page
        $totalPages = ceil($totalRows / $item_per_page);

        require 'view/service/index.php';
    }

    function detail()
    {
        $cond = $_GET['id'];
        $action = new ServiceRepository;
        $service = $action->getDetail($cond);
        $servicesRelated = $action->getRelated($cond);
        require 'view/service/detail.php';
    }
}
