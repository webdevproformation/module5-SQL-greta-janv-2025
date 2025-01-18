
-- INSERT 

INSERT INTO user (email, password) VALUES ('email@yahoo.fr' , '1234') ; 

-- vous pouvez choisir l'ordre des colonnes que vous voulez 
-- MAIS les valeurs doivent suivre l'ordre choisi

INSERT INTO user (password , email ) VALUES ( '1234', 'email@yahoo.fr' ) ; 

-- si je veux insérer plusieurs profils user 
INSERT INTO user (email, password) VALUES ('email1@yahoo.fr' , '1234') ;
INSERT INTO user (email, password) VALUES ('email2@yahoo.fr' , '1234') ;

-- il est possible de n'avoir QUE une seule requête INSERT 
INSERT INTO user (email, password) VALUES 
('email1@yahoo.fr' , '1234') , 
('email2@yahoo.fr' , '1234') ;


--
-- je veux supprimer un ou plusieurs lignes dans une table 

DELETE FROM user ; --- !!!!!! vider toutes valeurs 
TRUNCATE user ; --- !!!!!! vider toutes valeurs  + id repart à 1 
                --- MySQL pas sur SQlite 
DROP TABLE user ; --- !!! vider toutes les valeurs + id repart à 1 ET même la structure colonnes et types 

--- DUMP de base de données => copie de sauvegarde de la base de données 
--- SQLITE il suffit juste de faire une copie du fichier .db 

-- DELETE il faut un where 

-- supprimer dans la table user le profil qui a l'id = 1 

DELETE FROM user WHERE id = 1 ; 

-- supprimer dans la table user les profils qui ont l'id 1 , 2 et 3 

-- solution 1 : répéter 3 fois la même requête en changeant l'id 
DELETE FROM user WHERE id = 1 ;
DELETE FROM user WHERE id = 2 ;
DELETE FROM user WHERE id = 3 ;

-- solution 2 : l'opérateur IN 
DELETE FROM user WHERE id IN ( 1,2,3 ) ;

-- solution 3 : l'opérateur BETWEEN
DELETE FROM user WHERE id BETWEEN 1 AND 3 ; 

-- solution 4 : >= AND =< 
DELETE FROM user WHERE id >= 1 AND id =< 3 ; 

-- INSERT INTO ET je veux appeler une image / vidéo 
-- fichier + adresse internet 
-- fichier stocké sur un disque DUR 
-- adresse "http://mario.jpg" => stockée en dans une colonne / d'une table


----
----

-- je veux modifier une information qui a été INSERT 

UPDATE user SET password = 'toto' ; -- !!!! si vous saisissez cette requête 
-- tous les profils vont avoir le password toto 

-- UPDATE il faut mettre un WHERE 

UPDATE user SET password = 'toto' WHERE id = 1 ; 
UPDATE user SET password = 'toto' WHERE id IN ( 1, 2,3) ; 
UPDATE user SET password = 'toto' WHERE id BETWEEN  1 AND  2  ; 
UPDATE user SET password = 'toto' WHERE id >=  1 AND id <= 2  ; 

-- mettre à jour plusieurs colonnes en même temps 

UPDATE user SET email = 'nouveau@yahoo.fr' , password = 'titi' WHERE id = 1 ;

-- exo 

-- SELECT => 


--- 
---

/*
vous voulez créer un site internet de réservation de salle de réunion

Dans votre base de données,  vous allez stocker :

des salles de réunion qui ont les caractéristiques suivantes :

nom
capacite
description
url_img
dt_creation


chaque salle est dans un batiment qui se caractérise par 

nom 
rue 
code_postal
ville 

un batiment peut contenir plusieurs salles de réunion par contre une salle de réunion ne peut être située que dans une seul batiment 


il y a 3 batiments 

Richelieu / 75 rue de Paris / 75000 / Paris
Jacques Prevert / 30 rue des Feuilles / 13000 / Marseille
Victor Hugo / 44 rue Marius Aufant // 92000 / Levallois 


dans le batiment Richelieu il y a 2 salles de réunion 

Rouge / 20 / salle avec Vidéo Projecteur / 'img.jpg' / le 1er février 2024
Bleue / 10 / salle avec bureau / img.jpg / le 1er mars 2024

dans le batiment Jacques Prevert il y a 3 salles de réunion

Rose / 50 / salle / img.jpg / le 1er octobre 2024
Mauve / 100 / auditorium / img.jpg / le 1er octobre 2010
Jaune / 15 / salle de réunion / img.jpg / le 1er janvier 2025


---- 
etape 3

Après avoir vu votre base de données, vous décidez de réaliser des rectifications 

- changer le nom de la salle Jaune à Vert
- changer le code postal du batiement Victor Hugo par 92300
- supprimer la salle Rouge 
*/


