-- créer 2 articles 

INSERT INTO article (titre, contenu , dt_publication , user_id) VALUES 
('Article 1' , 'lorem ipsum' , '2025-01-17' , 1); 
INSERT INTO article (titre, contenu , dt_publication , user_id) VALUES 
('Article 2' , 'lorem ipsum 2' , '2025-01-01' ,  1   ); 
-- titre 'Article 1'
-- contenu 'lorem ipsum'
-- dt_publication '2025-01-17'
-- user_id 1

-- titre 'Article 2'
-- contenu 'lorem ipsum 2'
-- dt_publication '2025-01-01'
-- user_id 1

-- l'utilisateur 1 (alain) a écrit 2 articles 

INSERT INTO article (titre , contenu , dt_publication , user_id) VALUES 
('apprendre SQL', 'créer une base de données' , '2025-01-17' , 11 );

INSERT INTO article (titre , contenu , dt_publication , user_id) VALUES 
('les 4 opérations de base en SQL', 'INSERT ...' , '2025-01-12' , 2 );

-- exo :
-- créer 1 article 
-- titre 'apprendre SQL'
-- contenu 'créer une base de données'
-- dt_publication aujourd'hui
-- rédigé par julien

-- créer un autre article
-- titre 'les 4 opérations de base en SQL'
-- contenu 'INSERT ...'
-- dt_publication le 12 janvier 2025
-- rédigé par céline 


-- changer le titre de l'article 1 
-- titre => Découverte de CSS 

UPDATE article SET titre = 'Découverte de CSS' WHERE id = 1 ; 
UPDATE article SET titre = 'Découverte de CSS' WHERE titre = 'Article 1' ; 

-- UPDATE on utilise la colonne id dans la clause WHERE 
-- id est UNIQUE 
-- par contre il est possible d'avoir plusieurs lignes où le titre contient la valeur Article 1

-- je veux mettre à jour le titre et la date de publication de l'article 2

UPDATE article SET titre = 'script en PHP' , 
                   dt_publication = '2023-12-31' 
WHERE id = 2 ; 


-- changer toutes les valeurs pour le premier article 

UPDATE article SET titre = 'HTML et CSS',
                   contenu = 'créer une page d''accueil' ,
                   dt_publication = '2024-02-15' ,
                   user_id = 2 
WHERE id = 1 ; 

-- échappement => ''
-- échappement => \'
-- échappement => &nbsp; 

-- 1. changer le redacteur de l'article qui a l'id 3  
-- il faut que ce soit Pierre

-- 2. changer pour l'article qui a l'id 4 
-- le contenu et la date de publication
-- contenu = 'dernier axo avant le déjeuner'
-- dt_publication 30 mars 2024

