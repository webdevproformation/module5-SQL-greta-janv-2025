DROP TABLE IF EXISTS batiment ; 

CREATE TABLE IF NOT EXISTS batiment (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    nom VARCHAR(255) NOT NULL , 
    rue VARCHAR(255) , 
    code_postal VARCHAR(5) ,
    ville VARCHAR(255)
);

DROP TABLE IF EXISTS salle ; 

CREATE TABLE IF NOT EXISTS salle (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    nom VARCHAR(255) NOT NULL , 
    capacite SMALLINT , 
    description TEXT ,
    url_img VARCHAR(255) ,
    dt_creation DATE DEFAULT CURRENT_DATE ,
    batiment_id INT ,
    FOREIGN KEY(batiment_id) REFERENCES batiment(id)
);


-- remplir les tables
-- d'abord les batiments 

INSERT INTO batiment 
(nom , rue , code_postal , ville) 
VALUES 
('Richelieu' , '75 rue de Paris' ,  '75000' , 'Paris'),
('Jacques Prevert' , '30 rue des Feuilles' , '13000' , 'Marseille'),
('Victor Hugo' , '44 rue Marius Aufant' , '92000' , 'Levallois');

-- je suis allez voir l'id de chaque salle dans la table batiement 
-- Richelieu => id 1
-- Jacques Prevert => id 2

INSERT INTO salle 
(nom , capacite , description , url_img , dt_creation , batiment_id)
VALUES
('Rouge' , 20 , 'salle avec Vidéo Projecteur' ,  'img.jpg' , '2024-02-01' , 1),
('Bleue' , 10 , 'salle avec bureau' , 'img.jpg' , '2024-03-01', 1)  ,
('Rose' , 50 , 'salle' , 'img.jpg' , '2024-10-01' , 2)  ,
('Mauve' , 100 , 'auditorium' , 'img.jpg' , '2010-10-01', 2)  ,
('Jaune' , 15 ,  'salle de réunion' ,  'img.jpg' , '2025-01-01', 2)  ;

-- opération de mise à jour / suppression d'enregistrements 

UPDATE salle SET nom = 'Vert' WHERE id = 5 ;

UPDATE batiment SET code_postal = '92300' WHERE id = 3 ; 

DELETE FROM salle WHERE id = 1 ; 