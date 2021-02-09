/*repartition du chiffre d'affaire par type de client*/
SELECT sum(lig_pu*lig_qua) AS 'Chiffre d\"affaire hors taxe',cli_type AS 'Type de client'
FROM ligne_commandes
JOIN commandes
ON ligne_commandes.lig_com_id=commandes.com_id
JOIN clients