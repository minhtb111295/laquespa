<?php 

// Connection
require '../connect-database/config.php';
require '../connect-database/connectDB.php';

// Import File
require '../bootstrap.php';

$c = $_GET['c'] ?? 'home';
$a = $_GET['a'] ?? 'index';

$str = ucfirst($c); // home => Home
$controllerName = $str . 'Controller'; // Home => HomeController
$str = "controller/$controllerName.php";

// Get List Banner
$cond = $_GET['c'] ?? 'home';
if ($cond) {
    $action = new BannerRepository;
    $banners = $action->getAll($cond);
}

// Get Category Product
$action = new CategoryProductRepository;
$category_products = $action->getAll();

// Get Category Service
$action = new CategoryServiceRepository;
$category_services = $action->getAll();

require $str;
$controller = new $controllerName;
$controller->$a();

?>