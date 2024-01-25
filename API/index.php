<?php  require __DIR__ .('/utilities/header.php');
require __DIR__ . ('/fonction/movies.fn.php');

?>

   
  <h1>Les films Utopia</h1>
  <?php $films =findAllmovies($db);
  ?>

  <?php foreach ($films as $film) { ?>
    <p>
      <a href="mapage.php?id=<?= $film['ID']?>"><?= $film['title'] ?></a>
    </p>
  <?php } ?>