<?php 
class BannerRepository {
    protected function fetch($condition) {
        global $conn;
        $banners = [];

        $sqlQuery = "SELECT * FROM banner";
        if ($condition) {
            $sqlQuery .= " WHERE $condition";
        }

        $result = $conn->query($sqlQuery);
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $id = $row['id'];
                $name = $row['name'];
                $featured_image = $row['featured_image'];
                $banner = new Banner($id, $name, $featured_image);
                $banners[] = $banner;
            }
        }
        return $banners;
    }

    function getAll($cond) {
        $condition = "name='$cond'";
        $banners = $this->fetch($condition);
        return $banners;
    }
}
?>