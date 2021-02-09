/* la procedure stockée pour determiner le delai de livraison et sa date de facture*/
Delimiter &&
DROP PROCEDURE IF EXISTS delai &&
CREATE PROCEDURE delai(p_com_id int)
BEGIN
SELECT datediff(com_date_exp,com_date_livr) AS 'Delai de livraison', com_date_paie AS 'fate de facture'
FROM commandes
WHERE com_id=p_com_id;
END &&
Delimiter ;