<?php 

function logika()
  $name1= isset($_POST['name']) ? $_POST['name'] : '';
                $name= strtolower($name1);
                $manufacturer= isset($_POST['manufacturer']) ? $_POST['manufacturer'] : '%';
                $pro = isset($_POST['pro']) ? $_POST['pro'] : 2;
                $exo = isset($_POST['exo']) ? $_POST['exo'] : 2;
	                // Skrypt #1
	                $sql = "SELECT id, name, image, manufacturer, y_manufacture FROM gallery WHERE ((pro='$pro' ) OR (exo='$exo' )) AND (manufacturer LIKE '$manufacturer') AND (LOWER(name) LIKE '%$name%') ;";
                $result = $conn->query($sql);
	    
	                while($row = $result -> fetch_array()) {
	                    echo "<li class='object'>";
                        echo "<img src='$row[2]' alt='proteza/egzoszkielet'>";
                        echo "<h4> $row[1]</h4>";
                        echo "<p>$row[3]</p>";
                        echo "<p>production year: $row[4]</p>";
	                    echo "</li>";
	                }

                   
                    ?>