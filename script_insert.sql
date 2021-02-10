DROP DATABASE if exists `village_green`;
CREATE  DATABASE  `village_green`;
USE `village_green`;
/*mise en place de la table pays*/

create table `pays`
(
    `pays_id`  char(2)  NOT NULL,
    `pays_nom` varchar(50) NOT NULL,
    PRIMARY KEY (`pays_id`)
);
/* chargement des données  de la table pays*/

INSERT INTO `pays` (`pays_id`,`pays_nom`) VALUES
('AD', 'Andorre'),
('AE', 'Émirats Arabes Unis'),
('AF', 'Afghanistan'),
('AG', 'Antigua-et-Barbuda'),
('AI', 'Anguilla'),
('AL', 'Albanie'),
('AM', 'Arménie'),
('AN', 'Antilles Néerlandaises'),
('AO', 'Angola'),
('AQ', 'Antarctique'),
('AR', 'Argentine'),
('AS', 'Samoa Américaines'),
('AT', 'Autriche'),
('AU', 'Australie'),
('AW', 'Aruba'),
('AX', 'Îles Åland'),
('AZ', 'Azerbaïdjan'),
('BA', 'Bosnie-Herzégovine'),
('BB', 'Barbade'),
('BD', 'Bangladesh'),
('BE', 'Belgique'),
('BF', 'Burkina Faso'),
('BG', 'Bulgarie'),
('BH', 'Bahreïn'),
('BI', 'Burundi'),
('BJ', 'Bénin'),
('BM', 'Bermudes'),
('BN', 'Brunéi Darussalam'),
('BO', 'Bolivie'),
('BR', 'Brésil'),
('BS', 'Bahamas'),
('BT', 'Bhoutan'),
('BV', 'Île Bouvet'),
('BW', 'Botswana'),
('BY', 'Bélarus'),
('BZ', 'Belize'),
('CA', 'Canada'),
('CC', 'Îles Cocos (Keeling)'),
('CD', 'République Démocratique du Congo'),
('CF', 'République Centrafricaine'),
('CG', 'République du Congo'),
('CH', 'Suisse'),
('CI', 'Côte d\'Ivoire'),
('CK', 'Îles Cook'),
('CL', 'Chili'),
('CM', 'Cameroun'),
('CN', 'Chine'),
('CO', 'Colombie'),
('CR', 'Costa Rica'),
('CS', 'Serbie-et-Monténégro'),
('CU', 'Cuba'),
('CV', 'Cap-vert'),
('CX', 'Île Christmas'),
('CY', 'Chypre'),
('CZ', 'République Tchèque'),
('DE', 'Allemagne'),
('DJ', 'Djibouti'),
('DK', 'Danemark'),
('DM', 'Dominique'),
('DO', 'République Dominicaine'),
('DZ', 'Algérie'),
('EC', 'Équateur'),
('EE', 'Estonie'),
('EG', 'Égypte'),
('EH', 'Sahara Occidental'),
('ER', 'Érythrée'),
('ES', 'Espagne'),
('ET', 'Éthiopie'),
('FI', 'Finlande'),
('FJ', 'Fidji'),
('FK', 'Îles (malvinas) Falkland'),
('FM', 'États Fédérés de Micronésie'),
('FO', 'Îles Féroé'),
('FR', 'France'),
('GA', 'Gabon'),
('GB', 'Royaume-Uni'),
('GD', 'Grenade'),
('GE', 'Géorgie'),
('GF', 'Guyane Française'),
('GH', 'Ghana'),
('GI', 'Gibraltar'),
('GL', 'Groenland'),
('GM', 'Gambie'),
('GN', 'Guinée'),
('GP', 'Guadeloupe'),
('GQ', 'Guinée Équatoriale'),
('GR', 'Grèce'),
('GS', 'Géorgie du Sud et les Îles Sandwich du Sud'),
('GT', 'Guatemala'),
('GU', 'Guam'),
('GW', 'Guinée-Bissau'),
('GY', 'Guyana'),
('HK', 'Hong-Kong'),
('HM', 'Îles Heard et Mcdonald'),
('HN', 'Honduras'),
('HR', 'Croatie'),
('HT', 'Haïti'),
('HU', 'Hongrie'),
('ID', 'Indonésie'),
('IE', 'Irlande'),
('IL', 'Israël'),
('IM', 'Île de Man'),
('IN', 'Inde'),
('IO', 'Territoire Britannique de l\'Océan Indien'),
('IQ', 'Iraq'),
('IR', 'République Islamique d\'Iran'),
('IS', 'Islande'),
('IT', 'Italie'),
('JM', 'Jamaïque'),
('JO', 'Jordanie'),
('JP', 'Japon'),
('KE', 'Kenya'),
('KG', 'Kirghizistan'),
('KH', 'Cambodge'),
('KI', 'Kiribati'),
('KM', 'Comores'),
('KN', 'Saint-Kitts-et-Nevis'),
('KP', 'République Populaire Démocratique de Corée'),
('KR', 'République de Corée'),
('KW', 'Koweït'),
('KY', 'Îles Caïmanes'),
('KZ', 'Kazakhstan'),
('LA', 'République Démocratique Populaire Lao'),
('LB', 'Liban'),
('LC', 'Sainte-Lucie'),
('LI', 'Liechtenstein'),
('LK', 'Sri Lanka'),
('LR', 'Libéria'),
('LS', 'Lesotho'),
('LT', 'Lituanie'),
('LU', 'Luxembourg'),
('LV', 'Lettonie'),
('LY', 'Jamahiriya Arabe Libyenne'),
('MA', 'Maroc'),
('MC', 'Monaco'),
('MD', 'République de Moldova'),
('MG', 'Madagascar'),
('MH', 'Îles Marshall'),
('MK', 'L\'ex-République Yougoslave de Macédoine'),
('ML', 'Mali'),
('MM', 'Myanmar'),
('MN', 'Mongolie'),
('MO', 'Macao'),
('MP', 'Îles Mariannes du Nord'),
('MQ', 'Martinique'),
('MR', 'Mauritanie'),
('MS', 'Montserrat'),
('MT', 'Malte'),
('MU', 'Maurice'),
('MV', 'Maldives'),
('MW', 'Malawi'),
('MX', 'Mexique'),
('MY', 'Malaisie'),
('MZ', 'Mozambique'),
('NA', 'Namibie'),
('NC', 'Nouvelle-Calédonie'),
('NE', 'Niger'),
('NF', 'Île Norfolk'),
('NG', 'Nigéria'),
('NI', 'Nicaragua'),
('NL', 'Pays-Bas'),
('NO', 'Norvège'),
('NP', 'Népal'),
('NR', 'Nauru'),
('NU', 'Niué'),
('NZ', 'Nouvelle-Zélande'),
('OM', 'Oman'),
('PA', 'Panama'),
('PE', 'Pérou'),
('PF', 'Polynésie Française'),
('PG', 'Papouasie-Nouvelle-Guinée'),
('PH', 'Philippines'),
('PK', 'Pakistan'),
('PL', 'Pologne'),
('PM', 'Saint-Pierre-et-Miquelon'),
('PN', 'Pitcairn'),
('PR', 'Porto Rico'),
('PS', 'Territoire Palestinien Occupé'),
('PT', 'Portugal'),
('PW', 'Palaos'),
('PY', 'Paraguay'),
('QA', 'Qatar'),
('RE', 'Réunion'),
('RO', 'Roumanie'),
('RU', 'Fédération de Russie'),
('RW', 'Rwanda'),
('SA', 'Arabie Saoudite'),
('SB', 'Îles Salomon'),
('SC', 'Seychelles'),
('SD', 'Soudan'),
('SE', 'Suède'),
('SG', 'Singapour'),
('SH', 'Sainte-Hélène'),
('SI', 'Slovénie'),
('SJ', 'Svalbard etÎle Jan Mayen'),
('SK', 'Slovaquie'),
('SL', 'Sierra Leone'),
('SM', 'Saint-Marin'),
('SN', 'Sénégal'),
('SO', 'Somalie'),
('SR', 'Suriname'),
('ST', 'Sao Tomé-et-Principe'),
('SV', 'El Salvador'),
('SY', 'République Arabe Syrienne'),
('SZ', 'Swaziland'),
('TC', 'Îles Turks et Caïques'),
('TD', 'Tchad'),
('TF', 'Terres Australes Françaises'),
('TG', 'Togo'),
('TH', 'Thaïlande'),
('TJ', 'Tadjikistan'),
('TK', 'Tokelau'),
('TL', 'Timor-Leste'),
('TM', 'Turkménistan'),
('TN', 'Tunisie'),
('TO', 'Tonga'),
('TR', 'Turquie'),
('TT', 'Trinité-et-Tobago'),
('TV', 'Tuvalu'),
('TW', 'Taïwan'),
('TZ', 'République-Unie de Tanzanie'),
('UA', 'Ukraine'),
('UG', 'Ouganda'),
('UM', 'Îles Mineures Éloignées des États-Unis'),
('US', 'États-Unis'),
('UY', 'Uruguay'),
('UZ', 'Ouzbékistan'),
('VA', 'Saint-Siège (état de la Cité du Vatican)'),
('VC', 'Saint-Vincent-et-les Grenadines'),
('VE', 'Venezuela'),
('VG', 'Îles Vierges Britanniques'),
('VI', 'Îles Vierges des États-Unis'),
('VN', 'Viet Nam'),
('VU', 'Vanuatu'),
('WF', 'Wallis et Futuna'),
('WS', 'Samoa'),
('YE', 'Yémen'),
('YT', 'Mayotte'),
('ZA', 'Afrique du Sud'),
('ZM', 'Zambie'),
('ZW', 'Zimbabwe');

/* mise en place de la table poste*/

create table `postes`(
                         `pos_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
                         `pos_nom` varchar(60) NOT NULL,
                         PRIMARY KEY (`pos_id`)
);

/*chargement des données à la table poste*/

insert into `postes`(`pos_id`,`pos_nom`)
values (1,'President Directeur General'),
       (2,'Directeur(/trice) des finances'),
       (3, 'Directeur(/trice) des ressources humaines'),
       (4, 'Directeur(/trice)commercial'),
       (5, 'preparateur(trice) de commande'),
       (6, 'vigile'),
       (7, 'Manageur(geuse)'),
       (8, 'Commercial(e)'),
       (9, 'comptable'),
       (10, 'Chef(fe) de rayon'),
       (11, 'Technicien(/ne) support informatique'),
       (12, 'Technicien(/ne) de maintenance'),
       (13, 'Hote(/esse'),
       (14, 'Directeur des systemes informatique'),
       (15, 'Acheteur'),
       (16, 'Assistant RH');

/*création de la table departement*/

create table `departements`(
                               `dep_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
                               `dep_nom` varchar(50) NOT NULL,
                               PRIMARY KEY(`dep_id`)
);

/*chargement des données à la departement*/

insert  into `departements`(`dep_id`, `dep_nom`)
value (1, 'Direction'),
      (2, 'Ressources humaines'),
      (3, 'Logistique'),
      (4, 'Direction des systémes d\"information'),
      (5, 'Distribution'),
      (6, 'Marketing'),
      (7, 'Comptabilités'),
      (8, 'Achat');

/*création de la table employés*/

create table `employes`(
                           `emp_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
                           `emp_nom` varchar (50) NOT NULL,
                           `emp_pre` varchar(50) NOT NULL,
                           `emp_genre` char(1) NOT NULL,
                           `emp_voie` varchar(50) NOT NULL,
                           `emp_nro_voie` int(10) NOT NULL,
                           `emp_codpos` int(10) NOT NULL,
                           `emp_ville` varchar(50) NOT NULL,
                           `emp_phone` int(20) NOT NULL,
                           `emp_mail` varchar(50) NOT NULL,
                           `emp_date_emb` datetime NOT NULL,
                           `emp_nbr_enf` int(10) NOT NULL,
                           `emp_sal` decimal(15.2) NOT NULL,
                           `emp_pos_id` int(10) NOT NULL,
                           `emp_dep_id` int(10) NOT NULL,
                           `emp_pays_id` int(10) NOT NULL,
                           `emp_sup_id` int(10) UNSIGNED DEFAULT NULL,
                           PRIMARY KEY (`emp_id`),
                           FOREIGN KEY (`emp_pos_id`) references `postes` (`pos_id`),
                           FOREIGN KEY (`emp_dep_id`) references `departements` (`dep_id`),
                           FOREIGN KEY (`emp_sup_id`) references `employes` (`emp_id`),
                           FOREIGN KEY (`emp_pays_id`) references `pays` (`pays_id`)
);

/*chargement de données à la table employé*/

insert into `employes`(`emp_id`,`emp_pos_id`,`emp_sup_id`,`emp_dep_id`,`emp_nom`,`emp_pre`,`emp_genre`,`emp_voie`,`emp_nro_voie`,`emp_codpos`,`emp_ville`,`emp_pays_id`,`emp_phone`,`emp_mail`,`emp_date_emb`,`emp_nbr_enf`,`emp_sal`)
values (1,1,null,1,'DURAND','Georges','M','Boulevard Balzac',10,94320,'BRY-SUR-MARNE','FR',0630014277,'durandgeorges@yahoo.zp',01/01/1999,3,20000.00),
       (2,9,12,7,'JEAN','Marinne','F','Rue Molier',2,7700,'Villiers','FR',0760023442,'jeanmarinne@hotmail.com',01/02/2015,2,16000.00),
       (3,15,14,8,'SOUBALI','Ichame','M','Rue Balzac',20,80000,'AMIENS','FR',0700200040,'soubaliichame@y.com',03/12/2010,1,14000.00),
       (4,10,14,3,'ASSILE','Isabelle','F','Avenue Beauville',7,80080,'Salouël','FR',0637560100,'assileisabelle@g.com',02/07/2015,2,13000.00),
       (5,6,13,5,'SIMONE','Eric','M','Boulevard méliés',7,85000,'Boukis','FR',0434770032,'simoneeric@hot.com',03/05/2001,2,12000.00),
       (6,5,14,3,'DORIAN','Maria','F','Rue St Georges',2,60000,'Calan','FR',0653473800,'dorienmaria@mel.com',01/02/2000,null,13000.00),
       (7,13,9,5,'FILIOR','Sandrine','F','Avenue Mir',10,50020,'Aniers','FR',0650009001,'filiorsandrine@kal.com',01/01/2010,2,11000.00),
       (8,13,9,5,'BARRY','Ali','M','Boulevard Charles',19,89080,'Ain','FR',0504020900,'barryali@hot.com',02/12/2012,3,11000.00),
       (9,8,14,5,'SOUANE','Brahim','M','Rue salouel',3,80680,'Berne','FR',0600012001,'souanebrahim@gm.fr',03/01/2000,3,14000.00),
       (10,8,14,5,'BOUZA','Soul','M','Avenue Gorgette',1,69000,'Villiers','FR',0704569000,'bouzasoul1@ht.com',02/01/2000,3,16000),
       (11,4,12,1,'MILLER','Chris','M','Impasse colin',10,42890,'Beauchamps','FR',0700049001,'millerchris@yh.com',01/09/2003,NULL ,16000.00),
       (12,2,1,1,'BORNE','Myléne','F','Rue Beauville',2,80080,'Salouël','FR',0760017700,'bornemylene@team.com',01/02/2001,1,16000.00),
       (13,3,12,1,'DARMATAN','Cydric','M','Bis rue collin',3,60060,'Beauvais','FR',0700012004,'darmtancydric@hot.com',04/05/2003,null ,16000.00),
       (14,7,13,5,'CORNER','Blaise','M','Rue Mopase',19,56030,'Toun','FR',0600099000,'cornerblaise@cm.fr',03/12/2012,3,13000.00),
       (15,16,3,2,'DRAKIL','Brems','M','Bis rue Balzac',2,80080,'AMIENS','FR',0789059023,'drakilbrems@tl.com',03/04/2000,null ,13000.00),
       (16,14,3,1,'YOUSSEF','Karim','M','Avenue Midrette',76,56020,'Ponin','FR',0670030000,'youssefkarim@ml.fr',09/01/2015,3,15000),
       (17,12,14,3,'WARMER','Elisabeth','F','Rue Moulin',40,77800,'Pente','FR',0656043423,'elisabethwarmer@cl.fr',09/09/2006,1,14000),
       (18,11,16,4,'SOUM','Kerf','M','Rue des sourires',3,65090,'Creil','FR',0789050665,'kerfsoum20@hl.com',09/12/2009,1,14000.00),
       (19,5,14,3,'DIARA','Souleymane','M','Boulevard st Anne',10,80000,'Amiens','FR',0706009040,'diarasouleymane@ht.com',09/05/2019,1,13000.00),
       (20,15,14,8,'SOUZA','Corine','F','Rue fiquet',3,85000,'Albertville','FR',0605002045,'corinesouza@yo.com',09/12/2001,2,14000.00),
       (21,5,14,3,'DIBOLA','George','M','Rue calmette',3,80080,'Amiens','FR',0506045070,'dibolageorge@cn.fr',09/04/2009,3,13000.00);




/*creation de la table client*/

create table `clients`(
                          `cli_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
                          `cli_nom` varchar(50) NOT NULL,
                          `cli_pre` varchar(50) NOT NULL,
                          `cli_voie` varchar(50) NOT NULL,
                          `cli_nro_voie` int(10) NOT NULL,
                          `cli_codpos` int (20) NOT NULL,
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

/*chargement des données à la table client*/

insert  into `clients`(`cli_id`, `cli_nom`, `cli_pre`, `cli_voie`, `cli_nro_voie`,`cli_codpos`,`cli_ville`, `cli_phone`, `cli_mail`, `cli_type`, `cli_emp_id`, `cli_pays_id`)
values (1,'LIGNAC','Gerome','Rue de Bastille',2,75012,'Paris',0606009000,'lignacgerome@ya.com','particulier',14,'FR'),
       (2,'KOLON','Harouna','Rue verte',10,1028,'Bruxelles',00325890890003,'kolonharouna@ht.be','professionnel',14,'BE'),
       (3,'SIMONE','Elisabeth','Rue Lacuée',4,75012,'Paris',0700012003,'simoneelisabeth@ml.fr','particulier',4,'FR'),
       (4,'SOUAMAORO','Ismael','Rue Beauville',70,80080,'Amiens',0702009001,'soumaoroismael@ht.com','particulier',4,'FR'),
       (5,'LEBLANC','Eric','Rue ain',2,95000,'Sarcelles',0768000900,'leblanceric@ht.com','professionnel',10,'FR'),
       (6,'BEN','Abdel','Rue Magenta',2,78020,'Limay',0700340001,'benabdel@gm.fr','Professinnel',10,'FR'),
       (7,'CARLOS','Roberto','Carrera san jeronimo',2,28010,'Madrid',0034567890876,'carlosroberto@ht.es','professionnel',10,'ES'),
       (9,'JAILLARD','Benjamin','Rue lorene',30,60060,'Creil',0769009000,'jaillardbenjamin','particulier',14,'FR'),
       (10,'BINETA','Gaoussou','Boulevard St Joseph',17,76020,'Verviers',0700010900,'binetagaoussou@ht.com','particuler',4,'FR'),
       (11,'KAMEL','Idris','Rue Morceau',2,78000,'Mantes',0700090807,'kamelidris@hy.com','particulier',14,'FR'),
       (12,'RENARD','Sofia','Avenue Goerges',90,94000,'Créteil',0678760004,'renardsofia@ht.com','particulier',4,'FR'),
       (13,'BOURGES','Anne','Rue des clois',3,23000,'Lima',0700019090,'bourgesanne@hy.com','particulier',10,'FR'),
       (14,'SULIMA','Yassine','Avenue Général De Gaule',2,94020,'Boissy St Goerges',060001200001,'sulimaneyassine@ml.fr','professionnel',4,'FR'),
       (15,'KONE','Drissa','Clos chapelle-aux-champs',2,1200,'Bruxelles',03274909010990,'drissakone32@ht.com','particulier',10,'BE'),
       (16,'CHERIF','Issa','Rue des libres',87,69000,'Lyon',076090050401,'issacherif@ml.com','professionnel',14,'FR'),
       (17,'DURAND','Michel','Rue des bonnes nouvelles',20,75012,'Paris',0679096745,'micheldurand@music.fr','professionel',4,'FR');

/*création de la table fournisseur*/

create table `fournisseurs`(
                               `fou_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
                               `fou_nom` varchar(50) NOT NULL,
                               `fou_voie` varchar(50) NOT NULL,
                               `fou_nro_voie` int(20) NOT NULL,
                               `fou_codpos` int(10) NOT NULL,
                               `fou_ville` varchar(50) NOT NULL,
                               `fou_phone` int(20) NOT NULL,
                               `fou_mail` varchar(50) NOT NULL,
                               `fou_type` varchar(50) NOT NULL,
                               `fou_pays_id` char(2) NOT NULL,
                               `fou_emp_id` int (10)NOT NULL,
                               PRIMARY KEY (`fou_id`),
                               FOREIGN KEY (`fou_pays_id`) REFERENCES `pays` (`pays_id`),
                               FOREIGN KEY (`fou_emp_id`) REFERENCES  `employes`(`emp_id`)
);

/*chargement des données de la table fournisseurs*/

insert into `fournisseurs`(`fou_id`,`fou_nom`,`fou_voie`,`fou_nro_voie`,`fou_codpos`,`fou_ville`,`fou_phone`,`fou_mail`,`fou_type`,`fou_pays_id`,`fou_emp_id`)
values (1,'HEBEI','Boulevard Magenta',10,75010,'Paris',07600998900,'hebeimusic@yahoo.com','importateur','FR',4),
       (2,'Music Town','Boulevard marchal',10,33000,'Bordeaux',0128674534,'musictown@ml.com','Fabricant','FR',14),
       (3,'HitJazz','Brodway Avenue',74,10007,'New York',018798969575,'hitjazzprod@focus.com','Fabricant','US',9),
       (4,'Found musical corporation','Mohrenstrasse',2,10117,'Berlin',0049674532343,'foundmusicalcorporation@ht.com','importateur','DE',20),
       (5,'Fender instrument','Jianguomenwal avenue',1,100004,'Beijing',0086674563920,'fenderinstrument@ht.com','Fabricant','CN',9),
       (6,'Music flow','Rue volacan',10,69000,'Lyon',0167985603,'musicflow@gm.com','importateur','FR',14),
       (7,'instrumental music','Rue de taverne',23,38000,'Grenoble',0398674527,'instrumentmusic@hotmail.com','importateur','FR',4);

/*création de la table catégories*/
create table `categories`(
                             `cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
                             `cat_nom` varchar(50) NOT NULL,
                             `cat_parent_id` int(10) UNSIGNED  DEFAULT NULL,
                             PRIMARY KEY (`cat_id`),
                             FOREIGN KEY (`cat_parent_id`) REFERENCES `categories` (`cat_id`)
);

/*chargement des données de la table categorie*/

insert into `categories`(`cat_id`,`cat_nom`,`cat_parent_id`)
values (1,'Guitare',null ),
       (2,'Sono',null ),
       (3,'Piano',null ),
       (4,'Batterie',null ),
       (5,'Micro',null ),
       (6,'Saxo',null ),
       (7,'Cable',null),
       (8,'Cases',null),
       (9,'acoustique',1),
       (10,'classique',1),
       (11,'éléctrique',1),
       (12,'Amplificateur',2),
       (13,'sonorisation portable',2),
       (14,'lecteur audio',2),
       (15,'acoustique',4),
       (16,'éléctrique',4),
       (17,'piano à queue',3),
       (18,'piano éléctrique',3),
       (19,'sans-fil',5),
       (20,'micro_usb',5),
       (21,'saxo_soprano',6),
       (22,'saxo-baryton',6),
       (23,'cable haut-parleur',7),
       (24,'cable à métre',7),
       (25,'case platine',8),
       (26,'case contôleur dj',8),
       (27,'case éclairage',8);

/* création de la table produit*/

create table `produits`(
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

/*chargement des données de la table produit*/

<<<<<<< Updated upstream
insert  into `produits` (`pro_id`,`pro_photo`,`pro_nom`,`pro_descr`,`pro_pru`,`pro_fou_id`,`pro_cat_id`)
values(1,'JPG','guitare flok','Tous les modèles comprennent une table en érable, un corps en acajou massif et la touche en palissandre',303.00,2,9),
       (2,'JPG','tableur','Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit',507.99 ,5,12),
       (3,'JPG','Soundcraft','Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit',209.00,7,27),
       (4,'JPG','flamenco','Surtout employée par les musiciens de Flamenco, cette guitare ressemble à une guitare classique (et en a les principales caractéristiques), mais est plus fine et légèrement plus petite',308.99,3,9),
       (5,'JPG','steinway','Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit',28000.00,1,17),
       (6,'JPG','yamaha','Surtout employée par les musiciens de Flamenco, cette guitare ressemble à une guitare classique (et en a les principales caractéristiques), mais est plus fine et légèrement plus petite',16000.00,4,20),
       (7, 'JPG', 'piphone', 'Inspirée par le SG de 1961 la guitare électrique SG Standard 61 est dotée un corps classique en acajou dans une finition Vintage Cherry et est alimentée par des humbuckers ProBucker avec électronique CTS', 429.99, 3,10),
       (8,'JPG','Alto','enceinte SLT TS215S est une enceinte sono actives de 15 pouces et une puissance de 625 watts.La nouvelle gamme de subwoofers actifs Truesonic V2',14900.00,5,13),
       (9,'JPG','Pearl','loren melato srrarra tocu tocu',420.99,1,15),
       (10,'JPG','Paul','lomate lolo riimater toppama',7600.99,2,23),
       (11,'JPG','caseplatine','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',1200.00,5,25),
       (12,'JPG','Lauten audio','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',308.00,3,19),
       (13,'JPG','Neuman','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',879.00,7,20),
       (14,'JPG','Soprano','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',209.99,6,21),
       (15,'JPG','Baryton','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',879.00,7,22),
       (16,'JPG','thomson','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',209.00,4,24),
       (17,'JPG','Sony','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',340.00,13,20),
       (18,'JPG','Yamaha','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',290.99,7,18),
       (19,'JPG','Continantal','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',349.99,3,27),
       (20,'JPG','Yous','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',359.99,1,26),
       (21,'JPG','Samsumg','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',348.90,13,19);
=======
insert  into `produits` (`pro_id`,`pro_photo`,`pro_ref`,`pro_nom`,`pro_descr`,`pro_pru`,`pro_fou_id`,`pro_cat_id`,`pro_stk`)
values(1,'JPG','guifl001','guitare flok','Tous les modèles comprennent une table en érable, un corps en acajou massif et la touche en palissandre',303.00,2,9,5),
       (2,'JPG','tab007','tableur','Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit',507.99 ,5,12,2),
       (3,'JPG','soundft','Soundcraft','Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit',209.00,7,27,7),
       (4,'JPG','flaco002','flamenco','Surtout employée par les musiciens de Flamenco, cette guitare ressemble à une guitare classique (et en a les principales caractéristiques), mais est plus fine et légèrement plus petite',308.99,3,9,2),
       (5,'JPG','stein01','steinway','Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit',28000.00,1,17,6),
       (6,'JPG','ya009','yamaha','Surtout employée par les musiciens de Flamenco, cette guitare ressemble à une guitare classique (et en a les principales caractéristiques), mais est plus fine et légèrement plus petite',16000.00,4,20,4),
       (7, 'JPG','pip003','piphone', 'Inspirée par le SG de 1961 la guitare électrique SG Standard 61 est dotée un corps classique en acajou dans une finition Vintage Cherry et est alimentée par des humbuckers ProBucker avec électronique CTS', 429.99, 3,10,8),
       (8,'JPG','alt0023','Alto','enceinte SLT TS215S est une enceinte sono actives de 15 pouces et une puissance de 625 watts.La nouvelle gamme de subwoofers actifs Truesonic V2',14900.00,5,13,5),
       (9,'JPG','pea002','Pearl','loren melato srrarra tocu tocu',420.99,1,15,10),
       (10,'JPG','pl003','Paul','lomate lolo riimater toppama',7600.99,2,23,8),
       (11,'JPG','casepl','caseplatine','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',1200.00,5,25,10),
       (12,'JPG','lautau','Lauten audio','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',308.00,3,19,9),
       (13,'JPG','neu090','Neuman','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',879.00,7,20,6),
       (14,'JPG','sopra0078','Soprano','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',209.99,6,21,5),
       (15,'JPG','baryn','Baryton','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',879.00,7,22,4),
       (16,'JPG','thsm','Thomson','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',209.00,4,24,11),
       (17,'JPG','son090','Sony','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',340.00,13,20,9),
       (18,'JPG','ya009','Yamaha','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',290.99,7,18,12),
       (19,'JPG','cont0090','Continantal','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',349.99,3,27,15),
       (20,'JPG','yus0010','Yous','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',359.99,1,26,8),
       (21,'JPG','sam0021','Samsumg','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',348.90,7,19,4);
>>>>>>> Stashed changes

/* création de la table commande*/

create table `commandes`(
                            `com_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
                            `com_date` datetime NOT NULL,
                            `com_date_paie` datetime NOT NULL,
                            `com_date_livr` datetime NOT NULL,
                            `com_date_exp` datetime NOT NULL,
                            `com_cli_id` int(10)  NOT NULL,
                            PRIMARY KEY (`com_id`),
                            FOREIGN KEY (`com_cli_id`) REFERENCES `client` (`cli_id`)
);

/*chargement des données de la table commandes*/

INSERT INTO `commandes` (`com_id`,`com_date`,`com_date_paie`,`com_date_livr`,`com_date_exp`,`com_cli_id`) 
VALUES (1,"18-05-20","20-01-21","12-20-17","03-11-18",2),
       (2,"23-01-16","12-09-18","01-23-20","05-11-16",15),
       (3,"21-10-19","07-04-19","05-17-19","24-11-17",10),
       (4,"08-07-16","28-07-20","11-25-16","04-09-20",7),
       (5,"03-01-17","21-06-16","01-10-22","16-03-20",12),
       (6,"04-04-19","21-02-16","11-11-18","02-12-17",13),
       (7,"15-06-19","18-07-19","05-06-21","03-12-18",17),
       (8,"21-03-21","21-03-21","05-11-17","06-01-19",7),
       (9,"28-07-17","10-07-17","04-14-19","27-10-20",4),
       (10,"29-04-17","21-04-20","11-29-16","04-03-16",11),
       (11,"20-02-18","10-04-20","07-30-18","06-06-20",4),
       (12,"13-07-17","10-06-18","02-18-16","23-08-21",7),
       (13,"09-02-17","21-07-18","07-18-18","22-12-21",17),
       (14,"11-10-20","29-01-16","03-14-17","17-09-19",10),
       (15,"06-12-16","05-07-18","01-17-17","27-03-19",3),
       (16,"23-07-17","10-11-16","08-27-19","08-05-19",15),
       (17,"09-02-19","13-11-18","09-10-16","05-09-19",4),
       (18,"10-07-19","29-07-21","05-14-20","20-12-18",17),
       (19,"23-01-17","12-08-18","02-13-17","26-12-21",8),
       (20,"03-09-20","16-05-19","05-09-19","28-12-17",8),
       (21,"19-03-16","25-03-16","06-13-16","14-07-20",7),
       (22,"30-07-19","21-12-17","07-12-16","21-05-19",17),
       (23,"17-05-21","14-02-20","04-07-18","14-05-21",3),
       (24,"25-10-16","10-10-20","12-22-21","20-02-17",12),
       (25,"30-06-19","02-12-18","05-03-16","04-07-21",10),
       (26,"21-06-18","17-12-17","07-11-21","03-04-19",13),
       (27,"25-12-21","15-10-17","02-18-21","07-10-18",14),
       (28,"01-11-16","02-05-18","09-29-16","26-02-21",9),
       (29,"05-05-21","28-04-21","07-15-19","17-07-16",2),
       (30,"09-03-19","04-11-19","04-18-18","03-08-20",7),
       (31,"08-08-21","23-12-21","03-01-16","06-08-19",5),
       (32,"17-12-18","07-05-16","09-25-21","31-01-19",3),
       (33,"22-03-18","20-05-20","08-07-21","29-08-21",2),
       (34,"21-02-21","23-09-21","01-24-21","02-08-20",2),
       (35,"11-08-17","05-10-17","03-20-20","03-10-16",1),
       (36,"29-02-20","05-09-16","10-23-17","08-01-21",13),
       (37,"30-01-19","23-10-21","03-02-17","31-12-20",2),
       (38,"10-05-21","16-11-17","01-31-22","23-04-18",5),
       (39,"12-03-17","29-12-19","09-12-21","26-09-17",17),
       (40,"08-06-16","21-04-17","11-12-19","20-06-19",11),
       (41,"31-12-16","06-10-18","10-04-21","04-06-20",6),
       (42,"10-04-17","30-05-21","07-24-19","05-08-20",4),
       (43,"13-12-18","02-04-21","01-13-22","25-06-18",4),
       (44,"20-03-16","02-09-16","07-26-20","22-12-20",11),
       (45,"10-09-17","23-12-21","12-25-17","30-11-21",14),
       (46,"05-09-20","10-08-21","02-18-21","04-09-20",8),
       (47,"31-01-19","12-10-20","09-05-21","05-07-20",2),
       (48,"20-05-21","24-01-22","02-27-16","19-10-18",12),
       (49,"14-02-16","04-03-20","06-21-16","23-11-21",11),
       (50,"10-08-21","13-01-16","05-15-19","13-08-20",13),
       (51,"01-06-19","09-11-16","04-11-18","13-12-18",15),
       (52,"09-04-19","04-01-22","11-16-19","09-12-21",9),
       (53,"24-12-16","06-11-19","11-14-17","28-04-16",11),
       (54,"20-07-16","15-02-19","10-18-21","03-10-17",4),
       (55,"28-11-16","26-06-21","12-04-21","02-05-16",13),
       (56,"24-11-17","28-05-19","08-05-19","13-10-21",6),
       (57,"14-02-18","07-10-20","10-24-20","04-04-19",7),
       (58,"11-08-19","03-03-17","09-03-16","29-09-19",6),
       (59,"02-12-17","21-02-20","10-23-19","02-03-18",11),
       (60,"11-09-21","25-10-20","06-07-16","07-05-18",6),
       (61,"14-05-16","19-09-19","12-12-21","27-05-18",6),
       (62,"19-08-21","01-11-19","08-05-17","15-05-18",2),
       (63,"02-04-17","07-09-16","06-21-17","11-04-16",13),
       (64,"17-11-18","23-12-16","10-03-17","24-01-22",15),
       (65,"06-09-21","21-02-16","04-07-20","01-01-18",15),
       (66,"25-09-17","17-11-18","08-20-18","06-11-17",12),
       (67,"18-11-20","28-02-18","04-19-20","03-04-18",10),
       (68,"09-01-22","18-05-21","03-19-20","21-01-17",14),
       (69,"26-07-21","10-02-19","12-10-20","13-07-17",2),
       (70,"06-01-22","12-10-21","10-10-21","25-11-18",9);
 
/* création de la table ligne de commande*/

create table `ligne_commandes`(
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
/*chargement des données de la table ligne commande*/

INSERT INTO `ligne_commandes` (`lig_id`,`lig_pu`,`lig_qua`,`lig_rem`,`lig_com_id`,`lig_pro_id`)
VALUES (1,7600.99,2,20,37,10),
       (2,502.00,8,2,31,17),
       (3,202.99,9,4,31,6),
       (4,446.00,5,4,35,15),
       (5,179.00,1,2,25,16),
       (6,467.00,7,8,6,19),
       (7,784.00,1,7,13,15),
       (8,911.00,8,6,49,17),
       (9,809.00,1,10,34,7),
       (10,160.99,2,10,49,12),
       (11,509.90,9,4,21,19),
       (12,289.89,6,7,43,21),
       (13,492.00,5,3,20,14),
       (14,631.00,6,6,14,21),
       (15,754.90,9,2,34,14),
       (16,607.00,4,2,14,20),
       (17,715.99,4,7,10,5),
       (18,285.00,1,7,34,20),
       (19,791.90,9,4,2,1),
       (20,583.00,5,4,14,18),
       (21,317.89,3,4,4,3),
       (22,381.90,4,5,20,2),
       (23,739.67,2,1,9,1),
       (24,275.00,6,5,25,6),
       (25,255.00,7,6,3,14),
       (26,665.89,9,4,33,16),
       (27,420.99,10,6,49,9),
       (28,933.90,1,6,41,20),
       (29,573.00,7,8,37,4),
       (30,628.90,5,8,50,15);

/*index sur la table categorie*/
ALTER TABLE `village_green`.`categories`  ADD INDEX `cat_parent_id` (`cat_parent_id`) USING BTREE;
ALTER TABLE `village_green`.`categories`  ADD INDEX `n_cat` (`cat_id`, `cat_nom`) USING BTREE;
/*index sur la table client*/
ALTER TABLE `village_green`.`clients` ADD INDEX `n_pays_id` (`cli_id`, `cli_ville`) USING BTREE;
ALTER TABLE `village_green`.`clients` ADD INDEX `n_phone` (`cli_nom`, `cli_pre`) USING BTREE;
/*index sur la table commandes*/
ALTER TABLE `village_green`.`commandes` ADD INDEX `n_client` (`com_id`, `com_date_paie`, `com_date_exp`, `com_cli_id`) USING BTREE;
ALTER TABLE `village_green`.`commandes` ADD INDEX `n_com_id` (`com_date`, `com_cli_id`) USING BTREE;
/*index sur la table employes*/
ALTER TABLE `village_green`.`employes` ADD INDEX `n_dep` (`emp_nom`, `emp_pre`, `emp_dep_id`) USING BTREE;
ALTER TABLE `village_green`.`employes` ADD INDEX `n_nbrenfant` (`emp_id`, `emp_nom`, `emp_pre`) USING BTREE;
ALTER TABLE `village_green`.`employes` ADD INDEX `n_poste` (`emp_pos_id`, `emp_nom`, `emp_pre`) USING BTREE;
ALTER TABLE `village_green`.`employes` ADD INDEX `salaire` (`emp_id`, `emp_nom`, `emp_pre`, `emp_pos_id`) USING BTREE;
/*index sur la table produit*/
ALTER TABLE `village_green`.`produits` ADD INDEX `n_pro_nom` (`pro_fou_id`, `pro_cat_id`) USING BTREE; 
ALTER TABLE `village_green`.`produits` ADD INDEX `n_pro_pru` (`pro_id`, `pro_nom`) USING BTREE; 
/*index sur la table ligne_commande*/
ALTER TABLE `village_green`.`ligne_commandes` ADD INDEX `n_lig_rem` (`lig_pro_id`, `lig_com_id`) USING BTREE; 






