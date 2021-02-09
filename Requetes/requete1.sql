/*le chiffre d'affaire généré par fournisseur*/
SELECT fou_nom AS 'Fournisseurs', SUM(pro_pru*pro_stk)AS "chiffre d\'affaire"
FROM produits
         JOIN fournisseurs
              ON produits.pro_fou_id=fournisseurs.fou_id
GROUP BY fou_id