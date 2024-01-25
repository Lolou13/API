
<h1 align=center>
# les bases de données SQL
</h1>

## defintion :
 SQL (sigle pour Structured Query Language, « langage de requêtes structurées ») est un langage informatique normalisé servant à exploiter des bases de données relationnelles. La partie langage de manipulation des données de SQL permet de rechercher, d'ajouter, de modifier ou de supprimer des données dans les bases de données relationnelles.

on utilise un SGBD (systeme de gestion de base de données ) pour manipuler des base de données .

## le SGBD :

le SGBD pour SQL s'appelle mysql.
pour connaitre la version de notre SGBD il faut ecrire le code suivant dans une console :
```
mysql --version
```
nous obtenons ce résultat :

![capture d'ecran , celui est le texte alternatif si l'image ne s'affiche pas ](https://myoctocat.com/assets/images/base-octocat.svg)

pour utiliser mysql dans notre CMD il faudra ecrire le code suivant :
```
mysql -u root -p

```

nous obtenons ce resultat :


![capture d'ecran , celui est le texte alternatif si l'image ne s'affiche pas ](/img/mysql.png)

nous sommes prets a taper du code sql , nous allons creer une premiere base de données avec le verbe CREATE :

![capture d'ecran , celui est le texte alternatif si l'image ne s'affiche pas ](/img/sqlCreate.png)

- le nom de la base est toujours en minuscule

- le verbe est toujours en majuscule

- il ne faut pas oublier les points virgule (;)
 

 
 une fois la database crée , on peut ensuite l'utiliser (avec le USE ) et y stcokers des données :
 ![capture d'ecran , celui est le texte alternatif si l'image ne s'affiche pas ](/img/sqlUse.png)

 une fois que on utilise le tableau precedement crée on y stocke les données :
  ![capture d'ecran , celui est le texte alternatif si l'image ne s'affiche pas ](/img/userSQL.png)
