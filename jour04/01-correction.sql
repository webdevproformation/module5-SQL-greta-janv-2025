-- requete 1 : créer la table user
CREATE TABLE IF NOT EXISTS user(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    email VARCHAR(255) NOT NULL ,
    password VARCHAR(255)
) ;
-- requete 2 créer la table article
CREATE TABLE IF NOT EXISTS article (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    titre VARCHAR(255) NOT NULL ,
    contenu TEXT ,
    dt_publication DATETIME,
    user_id INT ,
    FOREIGN KEY (user_id) REFERENCES user(id)
);