--  commentaire en SQL monoligne 

/* 
commentaire 
multiligne 
en SQL 
*/

/*
- dans cette base nous allons créer une table "user"
    - prenom VARCHAR(255)
    - date_naissance DATETIME
    - description TEXT 
*/

-- MAJUSCULE SQL 

CREATE TABLE IF NOT EXISTS user (
    prenom VARCHAR(255) ,
    date_naissance DATETIME ,
    description TEXT 
)

-- sudo apt-get install sqlite3

-- Dans la base de données 01-demo.sql
-- créer une nouvelle table articles
-- cette table contient les 6 colonnes suivantes :

-- titre texte avec un maximum de 255 caractères
-- contenu texte avec un maximum de 65 000 caractères => TEXT 
-- date_publication date et heure
-- is_online oui / non 
-- auteur texte avec un maximum de 255 lettres
-- duree chiffre entier non négatif avec un valeur maximum de 255 

-- créer la requête SQL qui permet de créer cette table dans la base 
-- exécuter 
-- afficher la nouvelle table dans "SQLITE EXPLORER"

CREATE TABLE IF NOT EXISTS articles (
    titre VARCHAR(255) ,
    contenu TEXT ,
    date_publication DATETIME ,
    is_online BOOLEAN , 
    auteur VARCHAR(255) ,
    duree SMALLINT 
)
-- si vous voulez changer la structure d'une table
-- modifier un type / supprimer colonne / ajouter une colonne 
-- SUR SQLITE 
-- Supprimer la table (structure) 
-- et refaire une CREATE TABLE 

-- SUR MySQL (phpMyAdmin)
-- ALTER TABLE 

-- =----------------------------------

-- en type // NULL et DEFAULT (valeur par défaut)

-- créer une table qui s'appelle image 
-- qui contient 4 colonnes 
-- url texte avec maximum de 255 lettres  (OBLIGATOIRE)
-- alt texte 65000 et facultatif 
-- date_publication date (année mois jour) SI AUCUNE VALEUR mettre la valeur de maintenant 
-- is_online oui / non par défaut c'est non 

-- DROP TABLE supprimer la table image SANS possibilité de retour en arrière ET SANS WARNING 

DROP TABLE IF EXISTS image ; 

CREATE TABLE IF NOT EXISTS image (
    url VARCHAR(255) NOT NULL ,
    alt TEXT , 
    date_publication DATE DEFAULT CURRENT_DATE ,
    is_online BOOLEAN DEFAULT FALSE ,
    presentation TEXT 
)

-- créer une nouvelle table qui s'appelle categorie
-- cette table contient les 5 colonnes suivantes :
-- titre champ textuel de 255 lettres max OBLIGATOIRE
-- online oui / non OBLIGATOIRE
-- description texte de 65000 caractères qui peut être vide
-- date_creation DATE et heure par défaut maintenant si vide
-- date_update DATE et heure par défaut maintenant si vide 

CREATE TABLE IF NOT EXISTS categorie(
    titre VARCHAR(255) NOT NULL ,
    online BOOLEAN NOT NULL ,
    description TEXT ,
    date_creation DATETIME DEFAULT CURRENT_TIMESTAMP ,
    date_update DATETIME DEFAULT CURRENT_TIMESTAMP
)

