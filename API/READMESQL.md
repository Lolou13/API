
<h1 align=center>
# les bases de SQL
</h1>

## la creation des bases et table avec CREATE:

lors des premeires etapes nous aurons besoin de creer des bases de données avec a l'interieur des tables .  
pour cela on utilisera l'instruction *CREATE*.

### EXEMPLE:

```
CREATE DATABASE first;

```
pour creer un tableau on le declare d'une autre manière.  
on doit y integrer un objet generique qui definira la nature des attributs :

```
CREATE table user2 (
    -> id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    -> name VARCHAR(100),
    -> Age INTEGER,
    -> email VARCHAR(255) NOT NULL UNIQUE,
    -> Tel INTEGER NOT NULL 
    -> );

Query OK, 0 rows affected (0,02 sec)
``` 
<span  style="color:#26B260">
le query OK ,nous indique que notre requete est correct et a été crée. 
</span>

 il ne faut surtout pas oublier <span  style="color:#DC143C">  l'instruction USE</span> avant de continuer !!!   
comme ceci:

```
USE firstdatabase;
Database changed
```
<span  style="color:#26B260">
Le DATABASE CHANGED nous indique bien que nous avons changé de database et que notre reque a fonctionnée
</span>

## l'instruction SHOW et DESC pour afficher:
lors de la creation de nos BDD il peut etre utile pour nous developpeur de verifier nos tables pour verifier d'avoir mis les données au bon endroits ou en cas de trous de memoire:

### EXEMPLE:

```
 SHOW TABLES;
+-------------------+
| Tables_in_marques |
+-------------------+
| marque            |
| modele            |
+-------------------+
2 rows in set (0,00 sec)
```
```
 DESC modele;
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| id       | int(11)      | NO   | PRI | NULL    | auto_increment |
| couleur  | varchar(100) | YES  |     | NULL    |                |
| prix     | int(11)      | YES  |     | NULL    |                |
| marqueid | int(11)      | YES  | MUL | NULL    |                |
+----------+--------------+------+-----+---------+----------------+
4 rows in set (0,00 sec)

```
 on peut aussi utiliser l'instruction <span class="bg-succes">SELECT* FROM </span> 

## le SELECT pour selectionner nos données:

l'instruction SELECT est la principale de nos instruction.  
elle permet de selectionner 1 ou plusieurs colonnes d'un tableau.

 ```
 SELECT ville FROM client;

 ```
- si on utilise l'etoile (*) on peut selection tout les elements d'une table
 ```
mysql> SELECT*FROM conduteur;
  ```
- on peut aussi specifier les elements que l'on veut selectionner dans nos tableaux
```
mysql> SELECT marque.name AS marque,conduteur.name AS conducteur,vehicules.prix,vehicules.couleur

 -> FROM vehicules
```

## le INSERT INTO pour rajouter nos données:
une fois nos databases et tables créées il nous faut rajouter nos données correspondantes aux objets crées dans nos tables.  
on fera ca grace a l'instruction INSERT INTO :

### EXEMPLE:
```
INSERT INTO user (id,name,Age,email,tel) VALUES

    -> (1,'LILOU',22,'lilou@dev.fr',0606060606),

    -> (2,'JULIE',28,'julie@dev.fr',0606060606),

    -> (3,'RODRIGUE',37,'rodrigue@dev.fr',0606060606);

Query OK, 3 rows affected (0,00 sec)
Records: 3  Duplicates: 0  Warnings: 0

```

<h2 align=center>
 LES CLEF PRIMAIRES ET ETRANGERES:
</h2>

### Il en existe en effets 2 types de clefs:

- Primaire, qui Correspond à sa propre table.
- Etrangère, Pointe vers une table étrangère. Cela permet de chaîner les tables entre elles.

#### on vas voir comment on les creer dans nos objets lorsque que l'on creer nos tables.

### clef primaire :
se situant dans l'ID lors de la creation de l'objet on l'ecrit tout simplement comme ceci :

```
-> id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
```
### clef etrangère:

- se situant dans un tableau externe nous devons l'indiquer lors de la creation de l'objet qu'il aura une clef etrangere dans notre table.
```
 CREATE TABLE vehicules(
    ->  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    -> couleur VARCHAR(100),
    -> prix INTEGER NOT NULL,
    -> marqueid INTEGER,
    -> FOREIGN KEY (marqueid) REFERENCES marque(id)
    -> );
```

- on s'attardera seulement sur les 2 dernieres lignes qui donne les indication sur la clef etrangere :
```
    -> marqueid INTEGER,
    -> FOREIGN KEY (marqueid) REFERENCES marque(id)
    -> );
```
- ansi le <span  style="color:#26B260">REFERENCES</span> donne l'indication de la ou se trouvera la clef etrangere.  
- tandis que <span  style="color:#26B260">FOREIGN KEY </span> (<span  style="color:#DC143C"> NOM</span>) lui associe le nom que on aura choisi pour cette clef

## le UPDATE pour modifier une ligne deja crée:
- lors de la creation de nos tables , il peut nous arriver de nous tromper , c'est la ou l'instruction UPDATE elle nous permet de modifier une ligne 
### EXEMPLE:
```
mysql> UPDATE modele

    -> SET couleur='bleu',

    -> prix=3000,

    -> marqueid=1

    -> WHERE id=1;

Query OK, 1 row affected (0,00 sec)
Rows matched: 1  Changed: 1  Warnings: 0
```
- le  <span style="color:#26B260">UPDATE</span> suivi du nom de la table que on veut modifier.
- le <span style="color:#26B260">SET</span> suivi du des ligne avec leur nouvelles valeures
- le <span style="color:#26B260">WHERE</span> suivi du numero d'id que on veut modifier 

## le DROP ET LE DELETE pour supprimer des données :

- pour supprimer des tables ou bien carrement des databases nous pouvons utiliser le DROP ;

### EXEMPLE:
```
mysql> DROP DATABASE first;
Query OK, 1 row affected (0,02 sec)
```
- mais il existe aussi une autre instruction qui est DELETE.  
un peu plus precise cette instruction permet ainsi de selectionner dans une tableau ce que on veut supprimer a partir de criteres que on a definit

### EXEMPLE:

```
 DELETE FROM costumers
 WHERE age BETWEEN 20 AND 30
```
- le <span style="color:#26B260">DELETE FROM</span> permet d'indiquer dans quel table nous allons supprimer des elements.   
- le<span style="color:#26B260"> WHERE</span> nous permet de situer quel colonne nous alons agir.
suivi de critère choisi.

<span style="color: #FFFF00">si on resume ce code , dans le tableau</span> costumers <span style="color: #FFFF00">nous avons supprimer toute les personnes entre 20 et 30 ans</span>
   


<h2 align=center>
 LES JOINTURES EN SQL:
</h2>

## le INNER JOIN pour joindre deux tables :

. nous avons vu plus haut les clefs *ETRANGERE* ce sont elles qui nous permettent de faire des jointure entre 2 tables.

. Pour cela il nous faudra faire un INNER JOIN :
```
SELECT*

    -> FROM vehicules

    -> INNER JOIN marque ON vehicules.marqueid=marque.id;

+----+---------+------+----------+----+----------+
| id | couleur | prix | marqueid | id | name     |
+----+---------+------+----------+----+----------+
|  7 | bleu    | 2000 |        1 |  1 | audi     |
|  8 | noir    | 2000 |        2 |  2 | reanauld |
|  9 | rouge   | 3000 |        3 |  3 | bmw      |
+----+---------+------+----------+----+----------+

```
INNER JOIN marque (<span  style="color:#26B260">table qui contiens clef etrangere</span>) ON vehicules.marqueid=marque.id;

- le FROM sert a indiquer sur quel table on fait la jointure.  
(  <span  style="color:#DC143C">Il faut imperativement avoir au préalable declarée la clef etrangere dans ce tableau</span> )

- ici on joint a coté de <span  style="color:#26B260"> vehicules.marqueid</span> la table marque avec <span  style="color:#26B260"> marque.id</span>.

## le JOIN qui permet plusieurs jointures:

- le JOIN asociée au INNER JOIN permet de faire plusieurs jointures à la fois sur un meme tableau 
### EXEMPLE:
```
> SELECT*FROM vehicules
    -> INNER JOIN marque ON vehicules.marqueid=marque.id

    -> JOIN conducteur_vehicules on vehicules.id= conducteur_vehicules.vehiculesid

    -> JOIN conduteur ON conducteur_vehicules.conducteurid=conduteur.id;

```
- ce qui nous donne :

```
+----+---------+------+----------+----+----------+--------------+-------------+----+--------+
| id | couleur | prix | marqueid | id | name     | conducteurid | vehiculesid | id | name   |
+----+---------+------+----------+----+----------+--------------+-------------+----+--------+
|  7 | bleu    | 2000 |        1 |  1 | audi     |            1 |           7 |  1 | lilou  |
|  8 | noir    | 2000 |        2 |  2 | reanauld |            1 |           8 |  1 | lilou  |
|  9 | rouge   | 3000 |        3 |  3 | bmw      |            2 |           9 |  2 | julie  |
|  8 | noir    | 2000 |        2 |  2 | reanauld |            3 |           8 |  3 | benoit |
+----+---------+------+----------+----+----------+--------------+-------------+----+--------+
4 rows in set (0,00 sec)

```


 ### il faut que finisse le view 