<?php 
class PromotionRepository {
    function fetch() {
        global $conn;
        $promotions = [];

        $sqlQuery = "SELECT * FROM promotion";
        $result = $conn->query($sqlQuery);
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $id = $row['id'];
                $featured_image = $row['featured_image'];
                $promotion = new Promotion($id, $featured_image);
                $promotions[] = $promotion;
            }
        }
        return $promotions;
    }

    function getAll() {
        $promotions = $this->fetch();
        return $promotions;
    }
}
?>