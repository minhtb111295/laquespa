<?php 
class ServiceRepository {
    protected function fetch($condition, $limit) {
        global $conn;
        $services = [];

        $sqlQuery = "SELECT * FROM service";
        if ($condition) {
            $sqlQuery .= " WHERE $condition";
        }

        if ($limit) {
            $sqlQuery .= " $limit";
        }

        $result = $conn->query($sqlQuery);
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $id = $row['id'];
                $name = $row['name'];
                $description = $row['description'];
                $featured_image = $row['featured_image'];
                $details = $row['details'];
                $details_image = $row['details_image'];
                $time = $row['time'];
                $price = $row['price'];
                $created_date = $row['created_date'];
                $category_id = $row['category_id'];
                $service = new Service($id, $name, $description, $featured_image, $details, $details_image, $time, $price, $created_date, $category_id);
                $services[] = $service;
            }
        }
        return $services;
    }

    function buildLimit($page, $item_per_page) {
        $limit = NULL;
        if ($page && $item_per_page) {
            $start_index = ($page - 1) * $item_per_page;
            $limit = "LIMIT $start_index, $item_per_page";
        }
        return $limit;
    }

    function getAll($page=NULL, $item_per_page=NULL) {
        $limit = $this->buildLimit($page, $item_per_page);
        $services = $this->fetch($condition=NULL, $limit);
        return $services;
    }

    function getBy($cond, $page=NULL, $item_per_page=NULL) {
        $condition = "category_id=$cond";
        $limit = $this->buildLimit($page, $item_per_page);
        $services = $this->fetch($condition, $limit);
        return $services;
    }

    function getDetail($cond) {
        $condition = "id=$cond";
        $limit = NULL;
        $services = $this->fetch($condition, $limit);
        $service = current($services);
        return $service;
    }

    function getRelated($cond) {
        $service = $this->getDetail($cond);
        $category_id = $service->category_id;
        $condition = "category_id=$category_id AND id!=$cond";
        $limit = NULL;
        $servicesRelated = $this->fetch($condition, $limit);
        return $servicesRelated;
    }
}
?>