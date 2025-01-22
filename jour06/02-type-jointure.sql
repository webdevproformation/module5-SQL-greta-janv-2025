
-- salle 
-- ville 

-- JOINTURE INTERNE 
-- INNER JOIN 
-- le résultat la jointure vont afficher les données qui sont à la fois dans la table salle ET dans la table ville  

SELECT 
    salle.nom, 
    ville.nom  
FROM salle 
JOIN ville 
ON ville.id = salle.id_ville ;

-- je pouvoir afficher les villes qui ont des salles de réunion MAIS aussi les villes qui n'ont pas de salle de réunion 
-- JOINTURE EXTERNE => OUTER JOIN 
-- JOINTURE GAUCHE
-- JOINTURE DROITE
-- JOINTURE GAUCHE et DROITE en même temps 

SELECT 
    salle.nom,
    ville.nom 
FROM ville 
LEFT JOIN salle
ON ville.id = salle.id_ville ;

-- afficher toutes les villes qui n'ont pas de salle réunion
SELECT 
    salle.nom,
    ville.nom 
FROM ville 
LEFT JOIN salle
ON ville.id = salle.id_ville 
WHERE salle.nom IS NULL ;

/*
nom	nom
Rouge	PARIS
Vert	Lyon
Bleu	PARIS
Gris	PARIS
Rose	Lyon
Pourpre	Lille
Jaune	Lille
*/

-- Mais si vous regarder le contenu de la table ville 
-- Marseille et Bordeaux 


-- pouvez m'affichez le nom des clients qui n'ont jamais fais de réservation ? 

SELECT
    c.nom,
    r.prix
FROM client as c
LEFT JOIN reservation AS r
ON r.id_client = c.id
WHERE r.id_client IS NULL;

-- correction
-- NULL permet de selectionner ce qui n'a pas été remplis
-- NULL est un MOT CLE, comme avec JS et qu'on écrit :
-- VAR / CONST / CONSOLE.LOG
-- Donc pas de = 'NULL' NON !!
-- NULL est différent de 'NULL' ( entre apostrophe ).


-- déterminer toutes les salles de réunion qui n'ont pas eu de réservation ?

SELECT
    s.nom
FROM salle as s
LEFT JOIN reservation AS r
ON r.id_salle = s.id
WHERE r.id_salle IS NULL;

-- MySQL 
-- il est aussi possible de créer des jointures DROITE

-- jointure droite RIGHT JOIN
SELECT
    s.nom
FROM salle as s
RIGHT JOIN reservation AS r
ON r.id_salle = s.id
WHERE r.id_salle IS NULL;

-- jointure droite et gauche en même temps OUTER JOIN
SELECT
    s.nom
FROM salle as s
OUTER JOIN reservation AS r
ON r.id_salle = s.id
WHERE r.id_salle IS NULL;
