--Table salle
id
nom
capacite
description
url_img
dt_creation
batiment_id

pragma table_info(salle);


-- on a decouvert les reqête SELECT
-- la requête SELECT permet de récuperer des informations qui sont stockés dans une ou plusieurs tables

-- Exemple :

SELECT nom FROM batiment;

-- pour récuperer toute les colonnes d'une table en sql on devrait utiliser * qui va fonctionner comme un ALL

--Exemple ;

SELECT * FROM batiment;

--pour remplacer le nom d'une colonne lors d'un SELECT on utilise le mot clé AS

--Exemple :

SELECT
    code_postal AS `code postal` 
FROM batiment;

--Attention ne pas confondre les apostrophe '' avec les BACK TICK `` 

--si vous mettez des back tick au tour d'un texte c'est que vous parlez des colonnes nom AS `nom du batiments`

--si tu as un texte avec des apostrophe c'est que tu parles d'une valeurs code_postal AS 'code postal' ERROR


-- il est possible de modifier la valeur via un SELECT

SELECT
    rue ||' dans le '||code_postal||' à '|| ville AS `adresse complète`
FROM batiment; 

--pour extraire une annés en prennant la partie d'une date

--Exemple

SELECT
    STRFTIME('%Y', dt_creation) AS `années de creation`
FROM salle;

SELECT
    nom,capacite,
    (CASE
    WHEN capacite < 50 THEN 'petite salle'
    WHEN capacite >= 50 THEN 'grande salle'
    END) AS `type de salle` 
FROM salle ;

SELECT
    capacite FROM salle  WHERE capacite >=50 ;

--je voudrais afficher les batiments situer a Paris et a Marseille

SELECT
    nom FROM batiment WHERE ville = 'Paris' OR ville = 'Marseille';

SELECT
    nom FROM batiment WHERE ville IN ('Paris','Marseille');


SELECT
    nom FROM salle WHERE nom LIKE '%e' ;


SELECT
    batiment.nom , salle.nom , salle.capacite 
    FROM salle 
    JOIN batiment
    ON salle.batiment_id = batiment.id
    WHERE salle.capacite >= 100 ;


------------------------------------------------------->


SELECT
    b.nom , s.nom , s.capacite 
    FROM salle AS s 
    JOIN batiment AS b
    ON s.batiment_id = b.id
    WHERE s.capacite >= 100 ;

-- faire une agregation c'est comme faire une synthèse des valeurs via un concepte
-- pour chaque salle j'ai une capacité, maintenant je veux la capacité mais par batiment

SELECT
    b.nom , SUM(s.capacite)
    
    FROM salle AS s 
    JOIN batiment AS b
    ON s.batiment_id = b.id

    GROUP BY b.nom ;


-- exo un peu plus compliqué => PLUS de tables et PLUS de données 