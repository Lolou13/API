

<?php 

    require_once __DIR__ . ('/config/config.php');
    require_once __DIR__ . ('/fonction/database.fn.php');
    $db=getpdolink($config);
    require_once  __DIR__ .('/fonction/movies.fn.php');
    $film =findMoviesByid($db ,$_GET['id']);
    $title = $film['title'];
    require_once __DIR__ . ('/utilities/header.php'); 
    


?>

  <h1>Detail du film</h1>
  <h2><?= $film['title']?></h2>
  <p>année de réalisation : <?= $film['yearreleased']?></p>
  <p>par : <?= $film['director'] ?></p>
  <p>de : <?= $film['distributeur'] ?></p>
  <p>note des spéctateurs : <?= $film['rating']?></p>
  <p>nbr d'entrés : <?= $film['boxoffice']?></p>
  <p>durée : <?= $film['duration']?></p>
  <p>coût de production : <?= $film['budget']?></p>
  <p>langue: <?= $film['languages']?></p>


</body>
</html>