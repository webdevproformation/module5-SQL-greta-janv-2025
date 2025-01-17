-- ajouter deux profils 

INSERT INTO user (email, password) VALUES ('pierre@gmail.com' , 'hello') ;
INSERT INTO user (email, password) VALUES ('julien@yahoo.com' , 'blablabla') ;

-- changer le mot de passe de julien

UPDATE user SET password = 'PassWord' WHERE email = 'julien@yahoo.com' ; 