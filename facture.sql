DELIMITER &&
DROP PROCEDURE IF EXISTS facture &&
CREATE PROCEDURE facture(IN p_lig_id int)
BEGIN
   
	SELECT 'Facture', lig_id AS 'N° facture'
    FROM ligne_commandes
    WHERE lig_id = p_lig_id;
    
    SELECT 'Commande',lig_com_id AS 'ID Commande',com_date AS 'Date Commande',CURRENT_DATE     AS 'Date Facture'
    FROM ligne_commandes
    JOIN commandes
    ON ligne_commandes.lig_com_id = commandes.com_id
    WHERE lig_id = p_lig_id;

    SELECT 'Client:',cli_id AS 'N° Client', concat(cli_nom,'  ',cli_pre) AS 'Nom', concat(cli_voie,'  ', cli_nro_voie,'  ',cli_codpos,'  ',cli_ville,'  ',cli_pays_id)        AS 'Adresse',concat(cli_phone,'  ',cli_mail) AS 'Contact'
    FROM clients
    JOIN commandes
    ON clients.cli_id = commandes.com_cli_id
    JOIN ligne_commandes
    ON commandes.com_id = ligne_commandes.lig_com_id
    WHERE lig_id = p_lig_id;

    SELECT concat(cli_voie,'  ', cli_nro_voie,'  ',cli_codpos,'  ',cli_ville,'  ',cli_pays_id) AS 'Adresse Facturaction'
    FROM clients
    JOIN commandes
    ON clients.cli_id = commandes.com_cli_id
    JOIN ligne_commandes
    ON commandes.com_id = ligne_commandes.lig_com_id
    WHERE lig_id = p_lig_id;

    SELECT pro_ref AS 'REF', pro_nom AS 'DESIGNATION',  lig_pu AS 'PU HT',  lig_qua AS  'QUANTITE' , sum(lig_pu*lig_qua) AS 'TOTAL HT', SUM(0.2*lig_pu*lig_qua) AS 'TVA', SUM(lig_pu*lig_qua*(1-lig_rem/100)*1.2) AS 'TOTAL TTC'
    FROM produits
    JOIN ligne_commandes
    ON produits.pro_id = ligne_commandes.lig_pro_id
    WHERE lig_id = p_lig_id;
    SELECT 'Total', sum(lig_pu*lig_qua), SUM(0.2*lig_pu*lig_qua),SUM(lig_pu*lig_qua*(1-lig_rem/100)*1.2)
    FROM produits
    JOIN ligne_commandes
    ON produits.pro_id = ligne_commandes.lig_pro_id
    join commandes
    ON ligne_commandes.lig_com_id = commandes.com_id
    WHERE lig_id=p_lig_id;
    
END &&
DELIMITER ;