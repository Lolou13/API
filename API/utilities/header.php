
<?php


require_once dirname(__DIR__). ('/config/config.php');
require_once dirname(__DIR__). ('/fonction/database.fn.php');
$db=getpdolink($config);

$domain = "localhost:8888/API/";
$IndexPage= $domain;
$filmsPage= $domain . 'films.php';
$contact_page= $domain . 'contact.php';

$index_name="voici les films de la semaine";
$films_name="les films a l'\affiche";
$contact_name="contactez-nous";

var_dump($domain);

$current_url= $_SERVER['SCRIPT_NAME'];
 var_dump($current_url);

if(strpos($IndexPage, $current_url) !== FALSE || strpos($IndexPage . "index.php" . $current_url)!== FALSE) {
    $title = $index_name;
    echo 'index';
  }
  elseif (strpos($filmsPage, $current_url)!==FALSE) {
    $title = $films_name;
    echo 'film';
  }
  elseif (strpos($contact_page, $current_url)!==FALSE) {
    $title = $contact_name;
  }

?>

<!DOCTYPE html>
<html lang="FR-fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <link rel="apple-touch-icon" sizes="180x180" href="./assets/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./assets/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./assets/favicon/favicon-16x16.png">
     <link rel="manifest" href="./assets/favicon/site.webmanifest">
     
    <title>Les films d'utopia</title>
</head>
<body>

   <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="/"> 
                <img src="./assets/img/logo.png" alt="Logo" width=">60" height="50" class="d-inline-block ">
                    Cinema utopia</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4 w-100 justify-content-end">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="<?php $IndexPage?>">acceuil</a></li>
                        <li class="nav-item"><a class="nav-link" href="<?= $filmsPage ?>">Les films </a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Contact</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">tout les cinemas</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="#!">formulaire de contact</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
   
<header class="overflow-hidden" style="height: 500px;">
  <div class="container-fluid px-4 px-lg-5 position-relative h-100 ">
    <img src="./assets/img/cover.jpg" alt="image de background" class="position-absolute top-50 start-50 translate-middle h-100 w-100">
    <div class="text-center text-white position-absolute align-items-center top-50 start-50 translate-middle">
      <h1 class="display-4 fw-bolder"><?=$title?></h1>
      <p class="lead fw-normal text-white-50 mb-0">With this shop hompeage template</p>
    </div>
  </div>
</header>







<!--ci desssus nous avons les differentes etapes pour relier notre base de données avec le PHP -->
<?php
// PDO (string, $dsn) = Domain Server Name
// Constante d'environnement
 // Instance : J'ai une renault megane, ce n'est pas le prototype, c'est une référence type, on a une instance de renault megane.
 

/*
    define('dbhost', 'localhost');
    define('dbuser', 'root');
    define('dbpass', 'root');
    define('dbport', 8889);
    define('dbname', 'utopia');

    $dsn = 'mysql:dbname=' . dbname . ';host=' . dbhost;
  
    try {
      
        $bdd = new PDO($dsn, dbuser, dbpass);
        $bdd->exec('SET NAMES utf8');
    } catch (PDOException $e) {   
        die($e->getMessage());
    }

    $requete = "SELECT * FROM `movies` WHERE 1";

    $result = $bdd->query($requete);

    var_dump($result);

    $movies = $result->fetch();

    function pr($data)
    {
        echo "<pre>";
        var_dump($data); 
        echo "</pre>";
    }
    pr($movies);    */
?>
