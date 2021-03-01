-- Bon de livraison
DELIMITER &&

DROP PROCEDURE IF EXISTS bon_livraison &&

create PROCEDURE bon_livraison(IN p_lig_id int)
BEGIN
	SELECT 'Bon de livraison','N°',lig_id
    FROM ligne_commandes
    WHERE lig_id = p_lig_id;
    SELECT 'Commande','N°',com_id, 'du',com_date
    FROM commandes
    JOIN ligne_commandes
    ON commandes.com_id = ligne_commandes.lig_com_id
    WHERE lig_id = p_lig_id;
    SELECT 'Date', CURRENT_DATE
    FROM commandes
    JOIN ligne_commandes
    ON commandes.com_id = ligne_commandes.lig_com_id
    WHERE lig_id = p_lig_id;
	 SELECT 'Client:',cli_id AS 'Numéro',concat(cli_nom,' ',cli_pre) AS 'Nom',concat(cli_voie,' ',cli_nro_voie,' ',cli_codpos,' ',cli_ville,' ',cli_pays_id) AS 'Adresse',concat(cli_phone,' ',cli_mail) AS 'Contact'
    FROM clients
    JOIN commandes
    ON clients.cli_id = commandes.com_cli_id
    JOIN ligne_commandes
    ON commandes.com_id = ligne_commandes.lig_com_id
    WHERE lig_id = p_lig_id;
    
    SELECT concat(cli_voie,' ',cli_nro_voie,' ',cli_codpos,' ',cli_ville,' ',cli_pays_id) AS 'Adresse de livraison'
    FROM clients
    JOIN commandes
    ON clients.cli_id = commandes.com_cli_id
    JOIN ligne_commandes
    ON commandes.com_id = ligne_commandes.lig_com_id
    WHERE lig_id=p_lig_id;
   SELECT 'Description de la livraison';
    SELECT pro_ref AS 'REF', pro_nom AS 'Designation', lig_qua AS 'Quantité'
    from produits
    JOIN ligne_commandes
    ON produits.pro_id = ligne_commandes.lig_pro_id
    WHERE lig_id = p_lig_id;
END &&
DELIMITER ;