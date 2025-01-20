-- il nous reste une dernière opération ESSENTIELLE sur les enregistrements
-- récupérer / afficher / read les données stockées

-- SELECT 

-- je veux juste récupérer le nom de toutes salles de réunion dans base 

SELECT nom FROM salle ;

-- !!! ne pas confondre SELECT avec CREATE TABLE 
-- le SELECT ne va pas supprimer les autres colonnes de la table salle 

SELECT DISTINCT AS 
FROM 
JOIN ON 
WHERE
ORDER BY 
GROUP BY 
LIMIT 

-- afficher le nom et la date de création de toutes les salles de réunion 

SELECT nom , dt_creation FROM salle ; 

-- afficher la date de création puis le nom de toutes les salles de réunion 

SELECT dt_creation , nom FROM salle ;

-- afficher le nom du batiment puis son code postal

SELECT nom , code_postal FROM batiment ; 

-- cas pratique :
-- afficher pour l'ensemble des salles de réunion
-- nom , url image , description 


SELECT nom , url_img , description  FROM salle ;

-- je veux afficher toutes les colonnes de toutes les salles 

SELECT id , nom, capacite, description,url_img,dt_creation,batiment_id FROM salle ; 

SELECT * FROM salle  ; 

-- dans la clause SELECT vous pouvez remplacer les noms de colonnes par le symbole
-- * => TOUTES les colonnes de la table dans l'ordre dans lequel vous les avez créées

-- AS => Alias de Colonnes => permet de renommer la colonne DANS un SELECT 

SELECT 
    nom AS `nom de la salle` , 
    description AS `présentation de la salle ` , 
    dt_creation AS `date de création`
FROM salle ; 

-- cas pratique
-- afficher pour l'ensemble des batiments 
-- nom qui vous allez renommer "nom du batiement"
-- code_postal que vous allez renommer "code postal"

SELECT 
    nom AS `nom du batiment`,
    code_postal AS `code postal`
FROM batiment ; 

-- afficher pour l'ensemble des batiments 
-- nom 
-- une colonne qui contient à la fois rue code_postal ville => que je vais appeler adresse complète 
-- concaténation 
-- SQLITE ||  => rue || ' ' || code_postal || ' ' || ville 
-- MySQL CONCAT()

SELECT 
    nom AS `nom de l'immeuble` ,
    rue || ' ' || code_postal || ' ' || ville AS `adresse complète`
FROM batiment ;


-- je veux afficher toutes les salles de réunion
-- nom de la salle 
-- uniquement l'année de publication 

SELECT 
    nom ,
    strftime('%Y', dt_creation ) AS `année de publication`
FROM salle ;

-- strftime() fonction de SQLITE 
-- DATE_FORMAT() fonction en MySQL 

-- je veux afficher toutes les salles de réunion
-- nom de la salle 
-- la date publication en format Français JJ/MM/AAAA 

SELECT 
    nom ,
    strftime('%d/%m/%Y', dt_creation ) AS `date de publication en Français`
FROM salle ;

-- cas pratique
-- créer une requête SELECT qui va afficher pour toutes les salles de réunion 
-- une colonne qui s'appelle présentation est contient :
-- contenation "la salle Verte a une capacité de ... "
-- une deuxieme colonne afficher la date de création en format français 

SELECT 
    'la salle ' || nom || ' a une capacité de ' || capacite AS `présentation` ,
    strftime('%d/%m/%Y' , dt_creation) AS `date de création en format français`
FROM salle ;  

-- je veux savoir le nombre de jour entre la date de création et la date d'aujourd'hui pour chaque salle

-- unixepoch() => transformer date en grand nombre 1 milliard 700 millions 
--             => nombre de secondes entre le 1er janvier 1970 et MAINTENTANT

SELECT 
    nom ,
    date('now') AS `maintenant`,
    unixepoch('now') AS `maintenant 2`,
    date(dt_creation) AS `créé le`,
    unixepoch(dt_creation) AS `créé le 2` , 
    unixepoch('now') - unixepoch(dt_creation) AS `écart en secondes`,
    (unixepoch('now') - unixepoch(dt_creation)) / (24 * 60 * 60) AS `écart en jours`
FROM salle ; 

-- SQLITE => sqlite.org
-- MySQL  => W3school // sql.sh 


-- créer une requete SELECT qui affiche les informations suivantes :
-- pour toutes les salles réunion afficher 
-- nom de la salle 
-- la capacité => chiffre + le texte ' places assises'
-- dt_publication => le mois de création => 01 


SELECT 
    nom  ,
    capacite || ' places assises' AS `capacité`,
    -- nom colonne  || que je concaténe au texte ' places assises' ET le résultat de la concaténation renommer `capacité`
    strftime('%m', dt_creation) AS `mois de publication`
FROM salle ;

-- regroupement 
-- si une salle contient entre 0 et 20 places assises => 'petite salle'
-- si une salle contient entre 20 et 80 places assises => 'salle moyenne'
-- si une salle contient plus de 80 places assises => 'grande salle'

SELECT 
    nom , 
    capacite , 
    (CASE 
        WHEN capacite > 0 AND capacite < 20  THEN 'petite salle'
        WHEN capacite >= 20 AND capacite < 80 THEN 'salle moyenne'
        ELSE 'grande salle'
    END ) AS `type de salle`
FROM salle ;


-- cas pratique :
-- sélectionner tous les batiments :
-- afficher 
    -- nom du batiment
    -- code postal 
    -- région 
        -- si le code postal = 75000 ou 92300 => Ile de France
        -- si le code postal = 13000 => Provence-Alpes-Côte d'Azur

-- version 1
SELECT 
    nom  AS `nom du batiment` ,
    code_postal AS `code postal` ,
    (CASE 
        WHEN code_postal = '75000' THEN 'Ile de France'
        WHEN code_postal = '92300' THEN 'Ile de France' 
        WHEN code_postal = '13000' THEN 'Provence-Alpes-Côte d''Azur'
    END ) AS `region`
FROM batiment ; 

-- version 2
SELECT 
    nom  AS `nom du batiment` ,
    code_postal AS `code postal` ,
    (CASE 
        WHEN code_postal = '75000' OR code_postal = '92300' THEN 'Ile de France'
        WHEN code_postal = '13000' THEN 'Provence-Alpes-Côte d''Azur'
    END ) AS `region`
FROM batiment ; 