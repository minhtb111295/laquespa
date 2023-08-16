<?php 
class CategoryServiceRepository {
    protected function fetch() {
        global $conn;
        $category_services = [];

        $sqlQuery = "SELECT * FROM category_service";
        $result = $conn->query($sqlQuery);
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $id = $row['id'];
                $name = $row['name'];
                $category_service = new CategoryService($id, $name);
                $category_services[] = $category_service;
            }
        }
        return $category_services;
    }

    function getAll() {
        $category_services = $this->fetch();
        return $category_services;
    }
}
?>