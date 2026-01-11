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
    <header><input type="image" src="darkmode.png" id="darkmode"> </input>
        <h1>An interactive gallery of exoskeletons and prostheses</h1>
        
            
            <ol id="odnosniki">
            <li><a href="main.php">home</a></li>
            <li><a href="galeria.php">gallery</a></li>
            <li><a href="survey.php">survey</a></li>
        </ol>
    </header>

    <main>
        <form method="POST">
            <label for="exo">prostheses</label><br>
            <input type="checkbox" id="exo" name="exo"><br>
            <label for="pro">exoskeletons</label><br>
            <input type="checkbox" id="pro" name="pro"><br>
            <input type="submit">
        </form>
        <ol id="lista">

<?php
                $pro = isset($_POST['pro']) ? $_POST['pro'] : 2;
                $exo = isset($_POST['exo']) ? $_POST['exo'] : 2;
	                // Skrypt #1
	                $sql = "SELECT id, name, image, manufacturer, y_manufacture FROM gallery WHERE (pro='$pro' ) OR (exo='$exo' );";
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
</ol>
    </main>


    <footer>
        Contact: Piotr Marszałek (208161) and Jakub Meronk (205257)<br>+48 123 456 789
    </footer>

    <script src="script.js"></script>
</body>
<?php
    $conn -> close();
	?>
</html> 
