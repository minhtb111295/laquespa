<?php 
class ContentRepository {
    protected function fetch($condition) {
        global $conn;
        $contents = [];

        $sqlQuery = "SELECT * FROM content";

        if ($condition) {
            $sqlQuery .= " WHERE $condition";
        }

        $result = $conn->query($sqlQuery);
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $id = $row['id'];
                $name = $row['name'];
                $description = $row['description'];
                $featured_image = $row['featured_image'];
                $details = $row['details'];
                $post_id = $row['post_id'];
                $content = new Content($id, $name, $description, $featured_image, $details, $post_id);
                $contents[] = $content;
            }
        }
        return $contents;
    }

    function getAll($cond) {
        $condition = "post_id=$cond";
        $contents = $this->fetch($condition);
        return $contents;
    }
}
?>