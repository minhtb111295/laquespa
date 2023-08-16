<?php 
class CategoryProductRepository {
    protected function fetch() {
        global $conn;
        $category_products = [];

        $sqlQuery = "SELECT * FROM category_product";
        $result = $conn->query($sqlQuery);
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $id = $row['id'];
                $name = $row['name'];
                $category_product = new CategoryProduct($id, $name);
                $category_products[] = $category_product;
            }
        }
        return $category_products;
    }

    function getAll() {
        $category_products = $this->fetch();
        return $category_products;
    }
}
?>