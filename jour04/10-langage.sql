
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

