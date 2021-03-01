Etat de commande
DELIMITER &&

DROP PROCEDURE etat_commande if exists &&
create PROCEDURE etat_commande(IN p_com_id int)
BEGIN
    select com_id AS 'ID Commande', com_date AS 'Date Commande', com_etat AS 'Etat de Commande'
    from commandes
    WHERE com_id = p_com_id;
END &&

DELIMITER ;
