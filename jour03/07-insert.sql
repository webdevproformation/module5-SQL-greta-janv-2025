CREATE TABLE IF NOT EXISTS etudiant (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    nom VARCHAR(255),
    dt_naissance DATE ,
    niveau SMALLINT
);

-- une fois que ma table etudiant est créée en base de données 
-- je peux ENFIN enregistrer des données (valeurs) !!!!!

-- ajouter étudiant qui s'appelle 
-- Alain qui est né le 01 janvier 2023 qui a un niveau de 30
INSERT INTO etudiant ( nom , dt_naissance , niveau ) VALUES ('Alain' , '2023-01-01' , 30);
INSERT INTO etudiant ( nom , dt_naissance , niveau ) VALUES ('Céline' , '2023-01-02' , 19);
-- NE PAS ajouter la colonne id => car c'est une colonne directement gérée par la base de données AUTOINCREMENT 