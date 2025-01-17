-- si je veux supprimer des enregistrements 
-- en trop dans la table user 
-- je dois utiliser le mot clé DELETE 
-- !!!!!!!!! le DELETE une fois exécuté EST DEFINITIF 
DELETE FROM user WHERE id > 3 ;  

-- supprimer toutes les lignes dont l'id 
-- est supérieur strictement à 3 => 4 5 .... 
