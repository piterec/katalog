<?php
	    $conn = new mysqli("localhost","root","","exo_prostheses");
	
?>

<!DOCTYPE HTML>

<html lang="pl">
<head>
    <title>Interactive gallery of exoskeletons</title>
    <link rel="stylesheet" href="style.css">

</head>

<body>
    <header>
        An interactive gallery of exoskeletons and prostheses
        
            <input type="image" src="darkmode.png" id="darkmode"> </input>
        
    </header>

    <main>
        <ol id="polecamy">
<h3>Polecamy</h3>
<?php
	                // Skrypt #1
	                $sql = "SELECT id, name, image, manufacturer, y_manufacture FROM gallery WHERE pro_exo=1;";
                $result = $conn->query($sql);
	    
	                while($row = $result -> fetch_array()) {
	                    echo "<div class='object'>";
                        echo "<h4>$row[0]. $row[1]</h4>";
                        echo "<p>$row[3]</p>";
                        echo "<p>rok produkcji: $row[4]</p>";
                        echo "<img src='$row[2]' alt='proteza/egzoszkielet'>";
	                    echo "</div>";
	                }
	            ?>
</ol>
    </main>


    <footer>
        Contact: Piotr Marszałek (208161) and Jakub Meronk (205257)<br>+48 48 66 11 513
    </footer>

    <script src="script.js"></script>
</body>
<?php
    $conn -> close();
	?>
</html>
