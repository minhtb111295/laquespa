<?php 
class IntroduceRepository {
    protected function fetch($condition) {
        global $conn;
        $introduces = [];
        $sqlQuery = "SELECT * FROM introduce";
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
                $created_date = $row['created_date'];
                $introduce = new Introduce($id, $name, $description, $featured_image, $details, $created_date);
                $introduces[] = $introduce;
            }
        }
        return $introduces;
    }

    function getAll() {
        $condition = NULL;
        $introduces = $this->fetch($condition);
        return $introduces;
    }

    function getDetail($cond) {
        $condition = "id=$cond";
        $introduces = $this->fetch($condition);
        $introduce = current($introduces);
        return $introduce;
    }

    function getRelated($cond) {
        $condition = "id!=$cond";
        $introducesRelated = $this->fetch($condition);
        return $introducesRelated;
    }
}
?>