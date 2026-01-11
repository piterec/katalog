<?php
	    $baza = new mysqli("localhost","root","","ankiety");
        $submission= $_POST['feedback'];
        $kwerenda = 'insert into odpowiedzi (odpowiedz) VALUES ('"$feedback"');';
        mysqli_query($baza, $kwerenda);
	    $baza -> close();
?>