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
        <fieldset style="border-color:blue">
        <form method="POST" id="search" >
            
            <label for="pro">prostheses</label><br>
            <input type="checkbox" id="pro" name="pro"><br>

            <label for="exo">exoskeletons</label><br>
            <input type="checkbox" id="exo" name="exo"><br>

            <label for="manufacturer">manufacturer</label><br>
            <select id="manufacturer" name='manufacturer'>
                <option value="%">any manufacturer</option>
                <option value="Ottobock">Ottobock</option>
                <option value="Ossur">Ossur</option>
                <option value="Esper Bionics">Esper Bionics</option>
                <option value="Ortho-Reha">Ortho-Reha</option>
                <option value="Hosmer Dorrance Corporation">Hosmer Dorrance Corporation</option>
                <option value="Ekso Bionics">Ekso Bionics</option>
                <option value="Parker Hannifin">Parker Hannifin</option>
                <option value="ReWalk Robotics">ReWalk Robotics</option>
                <option value="Stanley Cubrick">Stanley Cubrick</option>
                <option value="Rex Bionics Ltd.">Rex Bionics Ltd.</option>
                <option value="HMH Corp">HMH Corp</option>
                <option value="SuitX">SuitX</option>
                <option value="Fourier Intelligence">Fourier Intelligence</option>
                <option value="Myomo, Inc.">Myomo, Inc.</option>
                <option value="Sarcos Robotics">Sarcos Robotics</option>
                <option value="Militech">Militech</option>
            </select><br>

            <label for="name">name of product:</label><br>
            <input type="text" id="name" name="name" ><br>
           
        </form>
</fieldset>
        <ol id="lista"> </ol>
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
