<?php
$conn = new mysqli("localhost","root","","exo_prostheses");
if ($conn->connect_error) exit;

function logika($conn)
{
    $name = isset($_POST['name']) ? strtolower($_POST['name']) : '';
    $manufacturer = isset($_POST['manufacturer']) ? $_POST['manufacturer'] : '%';

    $conditions = [];

    if (isset($_POST['pro'])) {
        $conditions[] = "pro = 1";
    }
    if (isset($_POST['exo'])) {
        $conditions[] = "exo = 1";
    }

    if (empty($conditions)) {
        $conditions[] = "1=1";
    }

    $where = implode(" OR ", $conditions);

    $sql = "
        SELECT id, name, image, manufacturer, y_manufacture
        FROM gallery
        WHERE ($where)
        AND manufacturer LIKE ?
        AND LOWER(name) LIKE ?
    ";

    $statement = $conn->prepare($sql);
    $likeName = "%$name%";
    $statement->bind_param("ss", $manufacturer, $likeName);
    $statement->execute();
    $result = $statement->get_result();

    while ($row = $result->fetch_assoc()) {
        echo "<li class='object'>";
        echo "<img src='{$row['image']}'>";
        echo "<h4>{$row['name']}</h4>";
        echo "<p>{$row['manufacturer']}</p>";
        echo "<p>production year: {$row['y_manufacture']}</p>";
        echo "</li>";
    }

    $statement->close();
}

logika($conn);
$conn->close();







