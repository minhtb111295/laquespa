<?php 
class IntroduceController {
    function index() {
        $action = new IntroduceRepository;
        $introduces = $action->getAll();
        require 'view/introduce/index.php';
    }

    function detail() {
        $action = new IntroduceRepository;
        $cond = $_GET['id'] ?? NULL;

        // Get Introduce Related
        $introducesRelated = $action->getRelated($cond);

        // Get Introduce
        $introduce = $action->getDetail($cond);
        require 'view/introduce/detail.php';
    }
}
?>