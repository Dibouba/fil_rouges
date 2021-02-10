/*le chiffre d'affaire généré par fournisseur*/

SELECT fou_nom AS 'Fournisseurs', SUM(pro_pru*pro_stk)AS "chiffre d\'affaire"
FROM produits
         JOIN fournisseurs
              ON produits.pro_fou_id=fournisseurs.fou_id
GROUP BY fou_id 

/*listes des produits commandes en 2030*/

SELECT pro_ref AS 'Référence',pro_nom AS 'Nom du produit',lig_qua AS 'Quantité commandée',pro_fou_id AS 'Fournisseur',
com_date AS 'Date de la commande'
FROM produits
JOIN ligne_commandes
ON produits.pro_id=ligne_commandes.lig_pro_id
JOIN commandes 
ON ligne_commandes.lig_com_id=commandes.com_id
WHERE YEAR(com_date)=2030 

/* listes des commandes d'un client*/

SELECT com_date AS 'date de commande',concat(cli_nom,' ',cli_pre) AS 'Référence client', lig_pu AS 'Montant',com_etat AS 'Etat de la commande'
FROM clients
JOIN commandes
ON clients.cli_id=commandes.com_cli_id
JOIN ligne_commandes
ON commandes.com_id=ligne_commandes.lig_com_id
WHERE cli_id=10 

/*requete de répartition du chiffre d'affaires hors taxes par type de client*/

SELECT SUM(lig_pu*lig_qua) AS "chiffre d\'affaire",cli_type AS 'type de client'
FROM ligne_commandes
JOIN commandes
ON ligne_commandes.lig_com_id=commandes.com_id
JOIN clients
ON commandes.com_cli_id=clients.cli_id
GROUP BY cli_id

/*liste des commandes en cour de livraison*/

SELECT com_id AS 'ID commande', com_date_livr AS 'commande en cour de livraison'
FROM commandes