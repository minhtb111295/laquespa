<?php 
class ImageItemRepository {
    protected function fetch($condition) {
        global $conn;
        $imageItems = [];

        $sqlQuery = "SELECT * FROM image_item";
        if ($condition) {
            $sqlQuery .= " WHERE $condition";
        }
        $result = $conn->query($sqlQuery);
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $id = $row['id'];
                $featured_image = $row['featured_image'];
                $product_id = $row['product_id'];
                $imageItem = new ImageItem($id, $featured_image, $product_id);
                $imageItems[] = $imageItem;
            }
        }
        return $imageItems;
    }

    function getAll($cond) {
        $condition = "product_id=$cond";
        $imageItems = $this->fetch($condition);
        return $imageItems;
    }
}
?>