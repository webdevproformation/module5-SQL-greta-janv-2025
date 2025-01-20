-- Agregation
-- Agréger une table 

------------
-- commande 
------------
-- id  total
-- 1    10
-- 2    30
-- 3    40

-- somme des montant totaux à payer => 80 

------------
-- commande 
------------
-- id  total
-- ??  80



------------
-- commande 
------------
-- id  total client
-- 1    10   Alain
-- 2    30   Alain
-- 3    40   Céline
-- 4    60   Céline


------------
-- commande 
------------
-- id  total client
-- 1    40   Alain
-- 3    100   Céline

-- combien j'ai de place assise par batiment 

SELECT 
    b.nom ,
    SUM( s.capacite )
FROM batiment AS b 
JOIN salle AS s 
ON s.batiment_id = b.id 
GROUP BY b.nom 


SELECT 
    b.nom ,
    GROUP_CONCAT( s.nom )
FROM batiment AS b 
JOIN salle AS s 
ON s.batiment_id = b.id 
GROUP BY b.nom 


SELECT 
    b.nom ,
    COUNT( s.nom )
FROM batiment AS b 
JOIN salle AS s 
ON s.batiment_id = b.id 
GROUP BY b.nom 

----------------

-- afficher par annee de publication 
-- nom  batiment / nom de la salle / capacité 

SELECT 
    strftime('%Y' , s.dt_creation) ,
    GROUP_CONCAT(b.nom) ,
    GROUP_CONCAT(s.nom) ,
    SUM(s.capacite)
FROM batiment AS b 
JOIN salle AS s 
ON s.batiment_id = b.id 
GROUP BY strftime('%Y' , s.dt_creation)