<?php

function getpdolink($config){
 /// DSN  de connexion
$dsn = 'mysql:dbname=' . $config['dbname'] . ';host=' . $config['dbhost'] . ';port=' . $config['dbport'];

//On tente de se connecter a la base de données :

try {
    //On instancie l'objet PDO :
    $db = new PDO($dsn, $config['dbuser'], $config['dbpass']);

    // On envoie nos requetes en utf8 : 
    $db->exec('SET NAMES utf8');

    // On definit le mode de fetch par defaut :
    $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
  
    return $db;
 } catch (PDOException $e) {
        exit('BDD erreur de connection : ' . $e->getMessage());
    }
   
}
