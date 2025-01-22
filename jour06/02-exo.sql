-- exo 1

-- donner le nom de toutes les salles qui se situent à Paris 
-- ville 
-- salle 
-- JOINTURE 

-- => 5 min 

```
SELECT 
  s.nom AS `nom de salle`, v.nom AS Ville
FROM salle AS s
JOIN ville AS v
ON v.id = s.id_ville
WHERE v.nom ="PARIS";
```

-- pouvez vous me donner l'ensemble des salles réservées par Aurélie
-- 3 tables en jeu
-- client 
-- reservation 
-- salle 

-- nom client ET nom de la salle 

SELECT 
    client.nom AS `prénom client`, 
    salle.nom AS `nom salle`
FROM client 
JOIN reservation
ON reservation.id_client = client.id
JOIN salle 
ON reservation.id_salle = salle.id 
WHERE client.nom = 'Aurélie' ;
-- version 2 avec Alias de table
SELECT 
    c.nom AS `prénom client`, 
    s.nom AS `nom salle`
FROM client AS c
JOIN salle AS s
ON r.id_salle = s.id 
JOIN reservation AS r
ON r.id_client = c.id
WHERE c.nom = 'Aurélie' ;

--
-- afficher moi l'ensemble des clients qui sont réservés une salle à Paris 

-- 4 tables client / reservation / salle / ville

-- ! afficher le nom client / email / ville / nom de la salle 
-- ? afficher le nom client / email / ville / nom de la salle 
-- # afficher le nom client / email / ville / nom de la salle 
-- * afficher le nom client / email / ville / nom de la salle 
--  afficher le nom client / email / ville / nom de la salle

SELECT 
    client.nom AS `nom client`,
    client.email ,
    ville.nom AS `nom ville`,
    salle.nom AS `nom salle`
FROM ville 
JOIN salle 
ON salle.id_ville = ville.id 
JOIN reservation
ON reservation.id_salle = salle.id 
JOIN client 
ON reservation.id_client = client.id 
WHERE ville.nom = 'PARIS' ;


SELECT 
    c.nom AS `nom client`,
    c.email ,
    v.nom AS `nom ville`,
    s.nom AS `nom salle`
FROM ville AS v
JOIN salle AS s
ON s.id_ville = v.id 
JOIN reservation AS r
ON r.id_salle = s.id 
JOIN client AS c
ON r.id_client = c.id 
WHERE v.nom = 'PARIS' ;

DELETE FROM reservation WHERE id = 8 ;

-- recette de cuisine

-- user 
-- recette 
-- categorie 
-- commentaire 

-- exo 

-- pour chaque réservation (table réservation)
-- a. compter le nombre de jours entre les deux dates dt_arrivee et dt_depart
-- b. multiplier le nombre de jour * prix  => montant à facturer

SELECT 
    (unixepoch(dt_depart) - unixepoch(dt_arrivee)) / (24 * 60 *60) AS `nb jours`,
    (unixepoch(dt_depart) - unixepoch(dt_arrivee)) / (24 * 60 *60) * prix AS `montant à facturer`
FROM reservation ;

-- 1er janvier et 3 janvier => 2 jours
-- 3 janvier - 1er janvier  => 2 jours
-- 1er janvier - 3 janvier  => -2 jours


-- https://www.sqlite.org/
-- https://www.sqlite.org/lang_datefunc.html


SELECT
  CASE
    -- si le jour de la date depart - le jour de la date d'arrivée == 0 alors payé 1 jour
    WHEN (strftime('%d',dt_depart) - strftime('%d',dt_arrivee)) = 0
        THEN prix
    ELSE
        (strftime('%d',dt_depart) - strftime('%d',dt_arrivee)) * prix 
END AS `Total of each reservation`
FROM reservation;

