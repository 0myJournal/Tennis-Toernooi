<?php
  //I do this so I can use functions from functions.php
  require "functions.php";
  require "functionsToernooiWedstrijd.php";

  //SET VARIABLES--------------------------------------
  
  //make connection to Database for data :D
  try{
    $db = new PDO("mysql:host=localhost;dbname=toernooi;", "root","");
  }
  catch(PDOException $exception)
  {
    //echo any error with database
      echo $exception->getmessage();
  }
  
  //-------------------------------------------------------
?>

<!-- set up HTML doctype, language, charsets to define page
 make connection to css/styles.css to use classes
 make connection to js/functions_js.js to use Javascript -->
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Toernooi</title>
  <meta name="description" content="toernooi v0">
  <meta name="author" content="Ewaldo Nieuwenhuis">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link type="text/css" rel="stylesheet" href="css/styles.css">
  <script type="text/javascript" src="js/functions.js"></script>  
</head>
<!-- header with title -->
<body class="back">
  <div class="holder">
  <h1 class="title">Toernooi</h1>
  <p class="undertitle"><a href="index.php" style="color:white;"> Terug naar homepagina </a>
  <br>Made by Ewaldo Nieuwenhuis</p>
    </div>
    <?php
        toernooiPage($db);
    ?>

  </body>
</html>