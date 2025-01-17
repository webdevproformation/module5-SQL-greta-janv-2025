-- clé primaire 

-- créer une table stocker des informations sur un concept
-- autant de colonnes QUE d'informations à stocker 
-- en + de ces informations lorsque l'on crée une table on va ajouter une colonne technique 
-- id => identifiant 
-- UNIQUE et qui permet d'identifier un enregistrement dans la table 
-- chiffre entier qui commence par 1 
-- chiffre est UNIQUE => pas possibilité de doublon 
-- AUTOINCREMENT => la valeur suivante est déterminé par le SGBD 

-- créer la table commentaire
-- id clé primaire (chiffre entier qui commence par 1 / AUTOINCREMENT)
-- sujet texte de maximum 255 lettres OBLIGATOIRE
-- description texte maximum 65000 obligatoire
-- email texte de maximum 255 lettres

CREATE TABLE IF NOT EXISTS commentaire (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    sujet VARCHAR(255) NOT NULL ,
    description TEXT NOT NULL ,
    email VARCHAR(255)
)

-- créer table exo-final 
-- cette table contient les 5 colonnes suivantes 
-- id clé primaire
-- description text maximum de 65000 lettres 
-- auteur texte maximum de 255 lettres ET OBLIGATOIRE
-- date_creation date et par défaut date du jour
-- a_publier oui / non le champ est obligatoire
