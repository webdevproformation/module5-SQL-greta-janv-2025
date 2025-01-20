-- jusqu'à maintenant nous avons afficher toutes les enregistrements d'une table 
-- filtrage => WHERE 
-- que nous avons déjà vu sur UPDATE / DELETE 

-- je veux récupérer toutes les batiments à Paris 
-- nom 
-- ville

SELECT 
    nom ,
    ville 
FROM batiment 
WHERE ville = 'Paris';

-- je veux récupérer toutes les batiments à Paris ou à Levallois
-- nom 
-- ville

SELECT
    nom ,
    ville 
FROM batiment
WHERE ville IN ('Paris' , 'Levallois') ;

SELECT
    nom ,
    ville 
FROM batiment
WHERE ville = 'Paris' OR ville = 'Levallois' ;

SELECT
    `nom` ,
    `ville` 
FROM `batiment`
WHERE `ville` = 'Paris' OR `ville` = 'Levallois' ;


SELECT
    `batiment`.`nom` ,
    `batiment`.`ville` 
FROM `batiment`
WHERE `batiment`.`ville` = 'Paris' OR `batiment`.`ville` = 'Levallois' ;

-- cas pratique 
-- créer une requête SQL SELECT qui permet d'afficher les salles de réunion
-- dont le nom est Rose ou Mauve
-- veuillez afficher le nom / capacité url de l'image

SELECT 
    nom ,
    capacite ,
    url_img
FROM salle 
WHERE nom IN ('Rose', 'Mauve');


SELECT 
    nom ,
    capacite ,
    url_img
FROM salle 
WHERE nom = 'Rose' OR nom = 'Mauve';

-- pour info sur MySQL rechercher 'Rose' ou 'ROSE' ou 'rose' 

-- je veux afficher toutes les salles qui ont été créées en 2024
-- nom
-- date de création

SELECT 
    nom ,
    dt_creation 
FROM salle 
WHERE strftime('%Y', dt_creation) = '2024';

--
-- WHERE colonne = 'valeur'
-- WHERE colonne > 10
-- WHERE colonne < 10
-- WHERE colonne >= 10
-- WHERE colonne <= 10
-- WHERE colonne <> 10 ; différent
-- WHERE colonne != 10 ; différent

-- WHERE colonne > 10 AND colonne < 20
-- WHERE colonne < 10 OR colonne > 20
-- WHERE (colonne > 10 AND colonne < 20) OR (colonne > 30 AND colonne < 40)

-- WHERE dt_creation = '2025-01-01'

-- WHERE strftime('%Y', dt_creation) = '2025'
-- WHERE dt_creation BETWEEN '2025-01-01' AND '2025-12-31'
-- WHERE dt_creation >= '2025-01-01' AND dt_creation <= '2025-12-31'

-- je veux chercher tous les batiments qui sont sur Paris

-- WHERE ville = 'Paris'

-- je veux afficher tous les batiments dont le nom de la ville commence par la lettre P

-- WHERE ville LIKE 'P%'

-- je veux afficher tous les batiments dont le nom de la ville finit par la lettre s

-- WHERE ville LIKE '%s'

-- je veux afficher tous les batiments dont le nom de la ville contient la lettre a (n'importe où)

-- WHERE ville LIKE '%a%'

SELECT 
    nom ,
    capacite 
FROM salle 
WHERE nom LIKE 'B%' OR nom LIKE 'b%';

-- dont la description contient la lettre v (majuscule ou minuscule)

SELECT 
    nom ,
    capacite ,
    description
FROM salle 
WHERE description LIKE '%V%' OR description LIKE '%v%';


-- afficher tous les batiments dont la rue contient la lettre 'a'
-- afficher nom du batiment
-- le code postal
-- la rue 

SELECT 
    nom ,
    code_postal ,
    rue 
FROM batiment 
WHERE rue LIKE '%a%';

SELECT 
    nom ,
    code_postal ,
    rue 
FROM batiment 
WHERE rue NOT LIKE '%a%';

-- JOINTURE => permet d'aller chercher des informations sur plusieurs tables 

SELECT ... ... 
FROM table1
JOIN table2 ON table1.id = table2.table1_id


-- AGREGATION => rassembler plusieurs lignes d'un SELECT 

SELECT COUNT(..) / MAX() / MIN() / AVG() 
FROM table 
GROUP BY 
HAVING 