/*listes des produits commandes en 2030*/
SELECT pro_ref AS 'Référence',pro_nom AS 'Nom du produit',lig_qua AS 'Quantité commandée',pro_fou_id AS 'Fournisseur'
FROM produits
JOIN ligne_commandes
ON produits.pro_id=ligne_commandes.lig_pro_id
JOIN commandes 
ON ligne_commandes.lig_com_id=commandes.com_id
WHERE YEAR(com_date)=2030