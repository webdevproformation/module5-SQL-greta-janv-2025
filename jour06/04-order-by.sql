
-- afficher l'ensemble des nom de salle de réunion 

SELECT 
    nom 
FROM salle ;

-- afficher l'ensemble des salles des noms de salle de réunion classé par ordre d'insertion dans la table 

-- ordre alphabétique A-Z
SELECT 
    nom 
FROM salle 
ORDER BY nom ;

-- ordre alphabétique Z-A
SELECT 
    nom 
FROM salle 
ORDER BY nom DESC;

-- 

-- ORDER BY avec une colonne de type DATETIME 

SELECT dt_arrivee 
FROM reservation ;

SELECT dt_arrivee 
FROM reservation
ORDER BY dt_arrivee ;
-- dt_arrivee est de type DATETIME plus ancien plus récent

SELECT dt_arrivee 
FROM reservation
ORDER BY dt_arrivee DESC;
-- dt_arrivee est de type DATETIME plus récent plus ancien

------
--- ORDER BY avec une colonne de type chiffre => INT SMALLINT TINYINT ... 

-- du plus petit au plus grand

SELECT prix 
FROM reservation 
ORDER BY prix;

----------

-- il est possible d'avoir PLUSIEURS colonnes pour l'ORDER BY 

SELECT strftime('%Y-%m-%d',dt_arrivee) , prix 
FROM reservation 
ORDER BY strftime('%Y-%m-%d',dt_arrivee)  , prix DESC;

-- !!! bravo fin du module 