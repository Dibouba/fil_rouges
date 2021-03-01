--- client en retard de paiement à une date données
DELIMITER &&
DROP PROCEDURE IF exists etat &&
create PROCEDURE etat(in p_com_date int)
BEGIN
    select  cli_id AS 'ID Client', concat(cli_nom,' ',cli_pre) AS 'Nom', com_etat AS 'Etat de commande'
    from clients
    join commandes
    ON clients.cli_id = commandes.com_cli_id
    WHERE com_etat like 'Retard de paiement' AND year(com_date) =p_com_date
    GROUP BY com_date;
END &&
DELIMITER ;