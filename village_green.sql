/*création de la base de données village green*/
DROP database `village_green`;
create database  `village_green`;
USE `village_green`;

/*création de la table postes*/

create table `postes`(
    `pos_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `pos_nom` varchar(50) NOT NULL,  
     PRIMARY KEY (`pos_id`)
);

/*création de la table departement*/

create table `departements`(
    `dep_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `dep_nom` varchar(50) NOT NULL,
    PRIMARY KEY(`dep_id`)
);

/*création de la table pays*/

create table `pays`(
    `pays_id` char(2) UNSIGNED NOT NULL AUTO_INCREMENT,
    `pays_nom` varchar(50) NOT NULL,
    PRIMARY KEY(`pays_id`)
);

/*création de la table fournisseur*/

create table `fournisseurs`(
    `fou_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `fou_nom` varchar(50) NOT NULL,
    `fou_pre` varchar(50) NOT NULL,
    `fou_voie` varchar(50) NOT NULL,
    `fou_nro_voie` int(20) NOT NULL,
    `fou_codpos` int(10) NOT NULL,
    `fou_ville` varchar(50) NOT NULL,
    `fou_phone` int(20) NOT NULL,
    `fou_mail` varchar(50) NOT NULL,
    `fou_type` varchar(50) NOT NULL,
    `fou_pays_id` int(10) NOT NULL,
    PRIMARY KEY (`fou_id`),
    FOREIGN KEY (`fou_pays_id`) REFERENCES `pays` (`pays_id`)
);

/*création de la table catégories*/

create table `categories`(
    `cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `cat_nom` varchar(50) NOT NULL,
    `cat_parent_id` int(10) UNSIGNED  DEFAULT NULL,
    PRIMARY KEY (`cat_id`),
    FOREIGN KEY (`cat_parent_id`) REFERENCES `categories` (`cat_id`)
);

/*création de la table employés*/

create table `employes`(
    `emp_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `emp_nom` varchar (50) NOT NULL,
    `emp_pre` varchar(50) NOT NULL,
    `emp_voie` varchar(50) NOT NULL,
    `emp_nro_voie` int(10) NOT NULL,
    `emp_codpos` int(10) NOT NULL,
    `emp_ville` varchar(50) NOT NULL,
    `emp_phone` int(20) NOT NULL,
    `emp_mail` varchar(50) NOT NULL,
    `emp_date_emb` datetime NOT NULL,
    `emp_nbr_enf` int(10) NOT NULL,
    `emp_sal` decimal(15,2) NOT NULL,
    `emp_fou_id` int(10) NOT NULL,
    `emp_pos_id` int(10) NOT NULL,
    `emp_dep_id` int(10) NOT NULL,
    `emp_pays_id` int(10) NOT NULL,
    `emp_sup_id` int(10) UNSIGNED DEFAULT NULL,
    PRIMARY KEY (`emp_id`),
    FOREIGN KEY (`emp_fou_id`) references `fournisseurs` (`fou_id`),
    FOREIGN KEY (`emp_pos_id`) references `postes` (`pos_id`),
    FOREIGN KEY (`emp_dep_id`) references `departements` (`dep_id`),
    FOREIGN KEY (`emp_sup_id`) references `employes` (`emp_id`),
    FOREIGN KEY (`emp_pays_id`) references `pays` (`pays_id`)
);

/*création de la table client*/

create table `clients`(
    `cli_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `cli_nom` varchar(50) NOT NULL,
    `cli_pre` varchar(50) NOT NULL,
    `cli_voie` varchar(50) NOT NULL,
    `cli_nbr_voie` int(10) NOT NULL,
    `cli_ville` varchar(50) NOT NULL,
    `cli_phone` int(20) NOT NULL,
    `cli_mail` varchar(50) NOT NULL,
    `cli_type` varchar(50) NOT NULL,
    `cli_emp_id` int(10) NOT NULL,
    `cli_pays_id` int(10) NOT NULL,
    PRIMARY KEY (`cli_id`),
    Foreign KEY (`cli_emp_id`) references `employes` (`emp_id`),
    Foreign KEY (`cli_pays_id`) references `pays` (`pays_id`)
);

/* création de la table produit*/

create table `produit`(
    `pro_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `pro_photo` varchar(200) NOT NULL,
    `pro_nom` varchar(50)  NOT NULL,
    `pro_descr` varchar(80) NOT NULL,
    `pro_pru` decimal(15,2) NOT NULL,
    `pro_fou_id` int(10)NOT NULL,
    `pro_cat_id` int(10) NOT NULL,
    PRIMARY KEY (`pro_id`),
    FOREIGN KEY (`pro_fou_id`) REFERENCES `fournisseurs` (`fou_id`),
    FOREIGN KEY (`pro_cat_id`) REFERENCES `categories` (`cat_id`)
);

/* création de la table commande*/

create table `commandes`(
    `com_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `com_date_paie` datetime NOT NULL,
    `com_date` datetime NOT NULL,
    `com_date_livr` datetime NOT NULL,
    `com_date_exp` datetime NOT NULL,
    `com_cli_id` int(10)  NOT NULL,
    PRIMARY KEY (`com_id`),
    FOREIGN KEY (`com_cli_id`) REFERENCES `client` (`cli_id`)
);

/* création de la table ligne de commande*/

create table `ligne_commande`(
    `lig_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `lig_pu` decimal(15,3) NOT NULL,
    `lig_qua` int(10) NOT NULL,
    `lig_rem` int(10) NOT NULL,
    `lig_com_id` int(10) NOT NULL,
    `lig_pro_id` int(10) NOT NULL,
    PRIMARY KEY (`lig_id`),
    FOREIGN KEY (`lig_com_id`) REFERENCES `commnades` (`com_id`),
    FOREIGN KEY (`lig_pro_id`) REFERENCES `produits` (`pro_id`)
);


