CREATE VIEW v_produit_fournisseur
AS
SELECT pro_id AS 'ID Produit', pro_nom AS 'Nom produit', fou_nom AS 'Fournisseur', fou_pays_id AS 'Pays Fournisseur'
FROM produits
JOIN fournisseurs
ON produits.pro_fou_id=fournisseurs.fou_id
ORDER BY pro_id ASC