<?php 
class ProductRepository {
    protected function fetch($condition) {
        global $conn;
        $products = [];

        $sqlQuery = "SELECT * FROM view_product";

        if ($condition) {
            $sqlQuery .= " WHERE $condition";
        }

        $result = $conn->query($sqlQuery);
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $id = $row['id'];
                $name = $row['name'];
                $price = $row['price'];
                $discount_percent = $row['discount_percent'];
                $discount_from_date = $row['discount_from_date'];
                $discount_to_date = $row['discount_to_date'];
                $description = $row['description'];
                $product_code = $row['product_code'];
                $views = $row['views'];
                $created_date = $row['created_date'];
                $featured_image = $row['featured_image'];
                $category_id = $row['category_id'];
                $sale_price = $row['sale_price'];
                $product = new Product($id, $name, $price, $discount_percent, $discount_from_date, $discount_to_date, $description, $product_code, $views, $created_date, $featured_image, $category_id, $sale_price);
                $products[] = $product;
            }
        }
        return $products;
    }

    function getAll() {
        $condition = NULL;
        $products = $this->fetch($condition);
        return $products;
    }

    function getBy($cond) {
        $condition = "category_id = $cond";
        $products = $this->fetch($condition);
        return $products;
    }

    function getDetail($cond) {
        $condition = "id=$cond";
        $products = $this->fetch($condition);
        $product = current($products);
        return $product;
    }

    function getRelated($cond) {
        $product = $this->getDetail($cond);
        $category_id = $product->category_id;
        $condition = "category_id=$category_id AND id!=$cond";
        $productsRelated = $this->fetch($condition);
        return $productsRelated;
    }
}
?>