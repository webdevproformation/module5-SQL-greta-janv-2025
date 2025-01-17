-- requête 1 créer table auteur

CREATE TABLE IF NOT EXISTS auteur (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    prenom VARCHAR(255) NOT NULL ,
    nom VARCHAR(255) NOT NULL ,
    date_naissance DATE 
);

CREATE TABLE IF NOT EXISTS livre (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    titre VARCHAR(255) NOT NULL ,
    date_publication DATE , 
    genre  VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS membre (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    prenom VARCHAR(255) NOT NULL ,
    nom VARCHAR(255) NOT NULL ,
    date_adhesion DATE 
);

CREATE TABLE IF NOT EXISTS auteur_livre (
    auteur_id INT ,
    livre_id INT ,
    FOREIGN KEY(auteur_id) REFERENCES auteur(id),
    FOREIGN KEY(livre_id) REFERENCES livre(id)
);

CREATE TABLE IF NOT EXISTS emprunt (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    date_emprunt DATETIME ,
    date_retour DATETIME , 
    membre_id INT ,
    livre_id INT ,
    FOREIGN KEY(membre_id) REFERENCES membre(id),
    FOREIGN KEY(livre_id) REFERENCES livre(id)
);