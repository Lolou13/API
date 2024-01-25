<?php

function findAllmovies($db){
    $sql = "SELECT * FROM `movies`;";
    // Sélectionne toutes les colonnes de tous les films dans la table movies
    
        $requete = $db->query($sql);
    // Execute la requete
    
        $result = $requete->fetchAll();
        return $result;
    // Recupere les resultat dans le tableau $film
}


function findMoviesByid($db,$currentId){

$sql = "SELECT m.ID, m.title, m.rating, m.yearreleased, m.boxoffice, m.budget, m.duration, d.name AS director,
dc.name AS distributeur,
GROUP_CONCAT(l.name SEPARATOR', ') AS languages
 FROM `movies` AS m INNER JOIN director d ON m.directorID = d.id
INNER JOIN  distribution_compagny dc ON m.compagnyID= dc.id
INNER JOIN movie_language ml ON m.ID= ml.movieID
JOIN languages l ON ml.languageID=l.ID
WHERE m.ID=$currentId;";

$requete = $db->query($sql);
$film= $requete->fetch();
return $film ;

}