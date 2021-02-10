/* le privilége lecture accorder  au profil visiteurs sur la table produit */
GRANT SELECT
ON village_green.produits
TO visiteur
identified BY 'visitor';
/*le privilége lecture accorder au profil client à toute la base de données et isertion et mettre à jour des tables commande et client*/
GRANT SELECT
ON village_green.*
TO client
identified BY 'customer';
/***************insert et update à la table commande*****************/
GRANT insert,UPDATE
ON village_green.commandes
TO client
identified BY 'customer';
/*************** insert et update à la table client****************/
GRANT insert,UPDATE
ON village_green.clients
TO client
identified BY 'customer';
/*le privilége lecture et écriture accorder au profil gestion sur toute la base de données*/
GRANT SELECT,INSERT
ON village_green.*
TO gestion
identified BY 'gere'
/*le privilége lecture, écriture, création et suppression accorder sur toute la base de données*/
GRANT SELECT,INSERT,CREATE,DELETE
ON village_green.*
TO administrateur
identified BY 'admin';