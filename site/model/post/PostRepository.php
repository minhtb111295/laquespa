<?php 
class PostRepository {
    protected function fetch($condition, $limit) {
        global $conn;
        $posts = [];

        $sqlQuery = "SELECT * FROM post";

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
                $created_date = $row['created_date'];
                $post = new Post($id, $name, $description, $featured_image, $created_date);
                $posts[] = $post;
            }
        }
        return $posts;
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
        $condition = NULL;
        $limit = $this->buildLimit($page, $item_per_page);
        $posts = $this->fetch($condition, $limit);
        return $posts;
    }

    function getBy($cond) {
        $condition = "id=$cond";
        $limit = NULL;
        $posts = $this->fetch($condition, $limit);
        $post = current($posts);
        return $post;
    }

    function getFeaturedPosts($cond, $quantity) {
        $condition = "id!=$cond";
        $limit = "LIMIT 0, $quantity";
        $featuredPosts = $this->fetch($condition, $limit);
        return $featuredPosts;
    }

    function getRelated($cond) {
        $condition = "id!=$cond";
        $limit = NULL;
        $posts = $this->fetch($condition, $limit);
        return $posts;
    }
}
?>