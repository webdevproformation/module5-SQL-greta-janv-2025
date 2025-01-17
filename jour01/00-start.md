# Base de données

=> super variable 
- pour stocker des valeurs dans une base de données il faut (et dans cet ordre) :

1. créer une base de données
2. créer des tables 
3. en fin insérer des données dans cette table  

## Table 

=> concept que l'on va gérer dans notre projet 
-> user
-> recette
-> catégorie
-> commentaire 
-> bon_de_commande ... 

## Table vous avez des colonnes et types

user (nom de la table)

prenom         VARCHAR(255)
nom            VARCHAR(255)
date_naissance DATE 

pas d'accentuation ou de caractère spéciaux 
pas d'espace => remplacer par des _ underscore
nom des colonnes et table => minuscules 
mot clé du langage SQL => VARCHAR / TEXT / BOOLEAN / NULL / DEFAULT (EN MAJUSCULE)

## cas concrêt

- créer une base de données 01-demo.db 
- dans cette base nous allons créer une table "user"
    - prenom VARCHAR(255)
    - date_naissance DATETIME
    - description TEXT 

=> SQLITE  => très simple à mettre en place !!!! 

## extensions 

=> SQLITE (alexcvzz) => SGBD 

=> créer un fichier 01-demo.db 
=> !!! ne pas ECRIRE DEDANS 

=> POUR ECRIRE dans le fichier 01-demo.db

=> requete SQL => SQLITE => réaliser les traitements dans le fichier 01-demo.db

// 
<!-- -->