
-- j'ai besoin d'afficher le nom du batiment ET le nom des salles qu'il contient
-- je veux afficher des valeurs qui sont stockées dans deux tables différentes

SELECT 
    capacite 
FROM batiment ; 

-- ERREUR car la table batiment ne contient pas de colonne capacite
-- Parse error near line 4: no such column: capacite SELECT

-- il est possible de faire ce genre de demande MAIS 
-- il va falloir ajouter une JOINTURE sur notre SELECT 

-- JOINTURE permet au SELECT rassembler plusieurs tables en même temps 
-- ne pas confondre JOINTURE ET les RELATIONS 
-- d'abord RELATION PUIS on peut utiliser les jointures


SELECT 
    nom 
FROM batiment 
JOIN salle ON salle.batiment_id = batiment.id 

-- Parse error near line 4: ambiguous column name: nom SELECT


SELECT 
    batiment.nom , salle.nom 
FROM batiment 
JOIN salle ON salle.batiment_id = batiment.id 


SELECT 
    b.nom , s.nom 
FROM batiment AS b
JOIN salle AS s
ON s.batiment_id = b.id 

-- je veux afficher nom du batiment / code_postal / nom_salle / capacite
-- uniquement pour les batiments à Paris 

SELECT 
    b.nom ,
    b.code_postal AS `code postal` ,
    s.nom ,
    s.capacite AS `nb places assises`
FROM batiment AS b  
JOIN salle AS s 
ON s.batiment_id = b.id 
WHERE b.ville = 'Paris' ;

--- exo 

-- afficher l'ensemble des salles de réunion qui sont dans un batiment à Marseille dont la capacité est > 80
-- afficher le nom de batiment , rue et code postal (Concaténation) , nom salle , date_création en français


SELECT 
    b.nom ,
    b.rue || ' ' || b.code_postal AS `adresse batiment` ,
    s.nom ,
    strftime('%d/%m/%Y' , s.dt_creation),
    s.capacite
FROM batiment  AS b
JOIN salle AS s 
ON s.batiment_id = b.id 
WHERE b.ville = 'Marseille' AND s.capacite > 80 ;