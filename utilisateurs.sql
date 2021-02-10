/*création du profil visiteur*/
CREATE USER 'visiteur'@'%localhost'identified BY 'visitor';
/*création du profil client*/
CREATE USER 'client'@'localhost' identified BY 'customer';
/*création du profil gestion*/
CREATE USER 'gestion'@'%localhost' identified BY 'gere';
/*création du profil administrateur*/
CREATE USER 'administrateur'@'%localhost' identified BY 'admin';