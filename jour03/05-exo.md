Exercice : Gestion d'une bibliothèque

Contexte : Vous devez modéliser une base de données pour une bibliothèque. La bibliothèque souhaite gérer les informations suivantes :

- Les livres disponibles.
- Les auteurs des livres.
- Les membres de la bibliothèque.
- Les emprunts de livres par les membres.

# Entités :

## Livre

- ID_Livre (Identifiant unique)
- Titre
- Date_Publication
- Genre

## Auteur

- ID_Auteur (Identifiant unique)
- Nom
- Prénom
- Date_Naissance

## Membre

- ID_Membre (Identifiant unique)
- Nom
- Prénom
- Date_Adhésion

## Emprunt

- ID_Emprunt (Identifiant unique)
- Date_Emprunt
- Date_Retour

# Associations :

- Un livre peut avoir plusieurs auteurs 
- Un membre peut emprunter plusieurs livres, et un livre peut être emprunté par plusieurs membres 

# Contraintes :

- Un livre doit avoir au moins un auteur.
- Un emprunt doit être lié à un livre et à un membre.

# Diagramme MCD :

- Créez les entités Livre, Auteur, Membre et Emprunt avec leurs attributs respectifs.
- A partir du MCD créer le MLD
- A partir du MLD créer le MPD 