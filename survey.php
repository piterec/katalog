
<!DOCTYPE HTML>

<html lang="pl">
<head>
    <title>Interactive gallery of exoskeletons</title>
    <link rel="stylesheet" href="style.css">

</head>

<body>
    <header> <input type="image" src="darkmode.png" id="darkmode"> </input>
        <h1>An interactive gallery of exoskeletons and prostheses</h1>
            
       
        <ol id="odnosniki">
            <li><a href="main.php">home</a></li>
            <li><a href="galeria.php">gallery</a></li>
            <li><a href="survey.php">survey</a></li>
        </ol>
    </header>

    <main>
      <section id="survey">
        <p>If you wish to join our newsletter, please enter your email address below.</p>

        <form id="surveyForm" method="POST">
                <fieldset>
                <legend>please enter your email address here</legend>
                <textarea name="comment" rows="4"></textarea>
            </fieldset>

            <button type="submit">Submit</button>
        </form>

    </section>
    </main>


    <footer>
        Contact: Piotr Marszałek (208161) and Jakub Meronk (205257)<br>+48 123 456 789
    </footer>

    <script src="script.js"></script>
</body>

