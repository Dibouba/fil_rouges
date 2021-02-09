/* listes des commandes d'un client*/
SELECT com_date AS 'date de commande',concat(cli_nom,' ',cli_pre) AS 'Référence client', lig_pu AS 'Montant',com_etat AS 'Etat de la commande'
FROM clients
JOIN commandes
ON clients.cli_id=commandes.com_cli_id
JOIN ligne_commandes
ON commandes.com_id=ligne_commandes.lig_com_id
WHERE cli_id=10