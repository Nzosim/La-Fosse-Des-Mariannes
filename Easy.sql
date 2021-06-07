create table pays(
    codePays number(2) primary key,
    nomPays varchar2(15)
);

INSERT INTO pays VALUES (1, 'Allemagne');
INSERT INTO pays VALUES (2, 'Autriche');
INSERT INTO pays VALUES (3, 'Espagne');
INSERT INTO pays VALUES (4, 'Italie');
INSERT INTO pays VALUES (5, 'Finlande');
INSERT INTO pays VALUES (6, 'France');
INSERT INTO pays VALUES (7, 'Grece');
INSERT INTO pays VALUES (8, 'Irlande');
INSERT INTO pays VALUES (9, 'Belgique');
INSERT INTO pays VALUES (10, 'Luxembourg');
INSERT INTO pays VALUES (11, 'Pays-Bas');
INSERT INTO pays VALUES (12, 'Portugal');
INSERT INTO pays VALUES (13, 'Slovenie');

create table jour(
    codeJour number(1) primary key ,
    libelleJour varchar2(10)
);

INSERT INTO jour VALUES (1, 'Lundi');
INSERT INTO jour VALUES (2, 'Mardi');
INSERT INTO jour VALUES (3, 'Mercredi');
INSERT INTO jour VALUES (4, 'Jeudi');
INSERT INTO jour VALUES (5, 'Vendredi');
INSERT INTO jour VALUES (6, 'Samedi');
INSERT INTO jour VALUES (7, 'Dimanche');

create table categorie(
    codeCateg varchar2(4) primary key ,
    libelleCateg varchar2(10),
    nbPorte number(1),
    nbPassager number(1),
    nbBag number(1),
    PrixJour number(3),
    Clim varchar2(1)
);

INSERT INTO categorie VALUES ('C001', 'monospace', 5, 7, 6, 60, 'O');
INSERT INTO categorie VALUES ('C002', 'routiere', 5, 5, 4, 50, 'O');
INSERT INTO categorie VALUES ('C003', 'compacte', 3, 5, 4, 45, 'N');
INSERT INTO categorie VALUES ('C004', 'luxe', 5, 4, 4, 100, 'O');
INSERT INTO categorie VALUES ('C005', 'citadine', 3, 3, 3, 35, 'N');

create table client(
    numClient varchar2(6) primary key,
    civilite varchar2(5),
    nom varchar2(15),
    prenom varchar2(15),
    codePostal number(5),
    ville varchar2(15),
    mail varchar2(50),
    dateNaiss date,
    numPermis number(6),
    dateObtention date,
    numCB number(5),
    pointBonus number(3),
    codePays number(1)
);

INSERT INTO client VALUES ('CL0001', 'M', 'Zone', 'thomas', '13000', 'Marseille', 'apha@yahoo.fr', '06/02/1978', '985435', '06/02/2002', '34532', 50, 6);
INSERT INTO client VALUES ('CL0002', 'M', 'Gremille', 'eric', '75015', 'Paris', 'beta@hotmail.com', '23/03/1982', '425342', '23/03/1999', '54356', 67, 6);
INSERT INTO client VALUES ('CL0003', 'M', 'Fouras', 'julien', '75016', 'Paris', 'ricota@gmail.fr', '12/01/1970', '322134', '12/01/1998', '33351', 453, 6);
INSERT INTO client VALUES ('CL0004', 'Mme', 'Berger', 'marie', '34005', 'Montpellier', 'berger@yahoo.com', '23/12/1975', '323447', '23/12/1999', '43546', 434, 6);
INSERT INTO client VALUES ('CL0005', 'Melle', 'Petit', 'isabelle', '66000', 'Perpignan', 'petit@yahoo.com', '06/02/1978', '432465', '06/02/2002', '33129', 723, 6);
INSERT INTO client VALUES ('CL0006', 'M', 'Blain', 'damien', '75001', 'Paris', 'balino@hotmail.fr', '23/03/1982', '765338', '23/03/1997', '75444', 543, 6);
INSERT INTO client VALUES ('CL0007', 'M', 'Timberlake', 'justin', '66002', 'Perpignan', 'justin@gmail.com', '12/05/1970', '653387', '12/05/1990', '54536', 54, 6);
INSERT INTO client VALUES ('CL0008', 'M', 'Groult', 'Laurent', '11003', 'Narbonne', 'groult@hotmail.com', '23/12/1980', '333211', '23/12/2004', '45763', 0, 6);
INSERT INTO client VALUES ('CL0009', 'Mme', 'Brunatti', 'Laura', '30001', 'Florence', 'asca@gmail.com', '12/01/1970', '132324', '12/01/1990', '65432', 5, 4);
INSERT INTO client VALUES ('CL0010', 'Mme', 'Herber', 'Rosa', '30002', 'Milan', 'zerro@hotmail.com', '23/12/1980', '233242', '23/12/2000', '34656', 0, 4);
INSERT INTO client VALUES ('CL0011', 'Melle', 'Joulle', 'Maria', '40000', 'Madrid', 'torus@yahoo.com', '12/01/1970', '342424', '12/01/2000', '44622', 26, 3);
INSERT INTO client VALUES ('CL0012', 'M', 'Pazzi', 'pierre', '75019', 'Paris', 'pazzi@yahoo.com', '06/02/1978', '234222', '06/02/2005', '65387', 43, 6);
INSERT INTO client VALUES ('CL0013', 'M', 'Khol', 'simon', '13002', 'Marseille', 'skhol@gmail.com', '23/03/1982', '242424', '23/03/2006', '34324', 123, 6);
INSERT INTO client VALUES ('CL0014', 'M', 'Girard', 'Lorenzo', '30001', 'Florence', 'girad@gmail.fr', '06/02/1978', '543765', '06/02/1998', '45673', 0, 4);
INSERT INTO client VALUES ('CL0015', 'Mme', 'Devra', 'laura', '40001', 'Barcelone', 'mihi@gmail.com', '23/12/1981', '565433', '23/12/1999', '23357', 432, 3);
INSERT INTO client VALUES ('CL0016', 'M', 'Dinar', 'Julio', '40003', 'Denia', 'tera@yahoo.com', '06/02/1978', '454545', '06/02/2005', '43376', 43, 3);
INSERT INTO client VALUES ('CL0017', 'M', 'Martino', 'Dino', '40024', 'Valence', 'ertt@yahoo.com', '23/03/1982', '753335', '23/03/1998', '33563', 0, 3);
INSERT INTO client VALUES ('CL0018', 'M', 'hemmer', 'anis', '30023', 'Turin', 'hemmer@yahoo.com', '23/03/1982', '765436', '23/03/2004', '35436', 432, 4);
INSERT INTO client VALUES ('CL0019', 'M', 'Silvestre', 'florent', '30072', 'Milan', 'silver@hotmail.com', '12/01/1970', '656357', '12/01/2003', '64364', 654, 4);
INSERT INTO client VALUES ('CL0020', 'M', 'Fratini', 'dan', '30045', 'Genes', 'frattiniflo@hotmail.com', '23/11/1982', '575677', '23/11/2002', '46567', 0, 4);
INSERT INTO client VALUES ('CL0021', 'M', 'Soulez', 'adrien', '78050', 'Versailles', 'soulez@yahoo.com', '12/01/1970', '575675', '12/01/2005', '77654', 53, 6);
INSERT INTO client VALUES ('CL0022', 'M', 'Bouquet', 'nicolas', '95000', 'Cergy', 'bouquet@yahoo.com', '25/10/1980', '355368', '25/10/2005', '34576', 67, 6);
INSERT INTO client VALUES ('CL0023', 'Mme', 'Jugnot', 'fanny', '95534', 'Pontoise', 'jugnot@gmail.com', '06/02/1978', '454664', '06/02/2003', '44426', 0, 6);
INSERT INTO client VALUES ('CL0024', 'M', 'Martin', 'alois', '75018', 'Paris', 'martin@hotmail.com', '20/05/1982', '464646', '20/05/2002', '66543', 44, 6);
INSERT INTO client VALUES ('CL0025', 'M', 'derrhy', 'antony', '95500', 'Cergy', 'dery@yahoo.com', '12/01/1970', '743567', '12/01/2002', '75374', 0, 6);

create table agence(
  numAgence varchar2(8) primary key,
  NomAgence varchar2(20),
  telAgence number(10),
  villeAgence varchar2(15),
  codePays number(1)
);

INSERT INTO agence VALUES ('AG010001', 'locaCar', '3376432865', 'Paris', 6);
INSERT INTO agence VALUES ('AG010002', 'rapidecar', '3398533335', 'Versailles', 6);
INSERT INTO agence VALUES ('AG010003', 'easCar', '3385421877', 'Cergy', 6);
INSERT INTO agence VALUES ('AG010004', 'rapidecar', '3354287635', 'Marseille', 6);
INSERT INTO agence VALUES ('AG010005', 'CarVoyage', '3376532279', 'Montpellier', 6);
INSERT INTO agence VALUES ('AG010006', 'AlphaCar', '3354286528', 'Narbonne', 6);
INSERT INTO agence VALUES ('AG010007', 'CarVoi', '3385398756', 'Paris', 6);
INSERT INTO agence VALUES ('AG010008', 'standAuto', '3376429979', 'Perpignan', 6);
INSERT INTO agence VALUES ('AG010009', 'Ucar', '3401235655', 'Madrid', 3);
INSERT INTO agence VALUES ('AG010010', 'Abel Location', '3476453245', 'Barcelone', 3);
INSERT INTO agence VALUES ('AG010011', 'Abis', '3453678977', 'Madrid', 3);
INSERT INTO agence VALUES ('AG010012', 'Acrea', '3456890425', 'Barcelone', 3);
INSERT INTO agence VALUES ('AG010013', 'AdaLoc', '3456327676', 'Denia', 3);
INSERT INTO agence VALUES ('AG010014', 'ASB World', '3456732197', 'Alicante', 3);
INSERT INTO agence VALUES ('AG010015', 'Autorent', '3354297377', 'Pontoise', 6);
INSERT INTO agence VALUES ('AG010016', 'CarGo', '3987653276', 'Florence', 4);
INSERT INTO agence VALUES ('AG010017', 'Continental Rent', '3987865438', 'Milan', 4);
INSERT INTO agence VALUES ('AG010018', '2KR Location', '3976542393', 'Turin', 4);
INSERT INTO agence VALUES ('AG010019', 'Ecoroute', '3453179876', 'Valence', 3);
INSERT INTO agence VALUES ('AG010020', 'InterRent', '3954218587', 'Genes', 4);
INSERT INTO agence VALUES ('AG010021', 'Liberty Car', '3965377644', 'Turin', 4);
INSERT INTO agence VALUES ('AG010022', 'Locabest', '3974227748', 'Florence', 4);
INSERT INTO agence VALUES ('AG010023', 'Rent a Car', '3476386321', 'Barcelone', 3);
INSERT INTO agence VALUES ('AG010024', 'AlloCar', '3376429864', 'Versailles', 6);
INSERT INTO agence VALUES ('AG010025', 'Cicar', '3488864218', 'Milan', 4);

create table vehicule(
    numVehic varchar2(10) primary key,
    codeCateg varchar2(4),
    NumAgence varchar2(8)
);

INSERT INTO vehicule VALUES ('100XA10', 'C002', 'AG010024');
INSERT INTO vehicule VALUES ('100XV01', 'C001', 'AG010001');
INSERT INTO vehicule VALUES ('100XV03', 'C003', 'AG010003');
INSERT INTO vehicule VALUES ('100XV04', 'C005', 'AG010004');
INSERT INTO vehicule VALUES ('100XV07', 'C002', 'AG010007');
INSERT INTO vehicule VALUES ('100XV08', 'C005', 'AG010008');
INSERT INTO vehicule VALUES ('100XV09', 'C001', 'AG010015');
INSERT INTO vehicule VALUES ('100XV11', 'C003', 'AG010001');
INSERT INTO vehicule VALUES ('100XV13', 'C005', 'AG010003');
INSERT INTO vehicule VALUES ('212XV03', 'C003', 'AG010003');
INSERT INTO vehicule VALUES ('213RT12', 'C004', 'AG010002');
INSERT INTO vehicule VALUES ('233DE34', 'C001', 'AG010001');
INSERT INTO vehicule VALUES ('320XS06', 'C004', 'AG010007');
INSERT INTO vehicule VALUES ('320XS07', 'C005', 'AG010007');
INSERT INTO vehicule VALUES ('320XS08', 'C003', 'AG010008');
INSERT INTO vehicule VALUES ('3245FT77', 'C005', 'AG010002');
INSERT INTO vehicule VALUES ('3256GT43', 'C003', 'AG010001');
INSERT INTO vehicule VALUES ('330XE14', 'C003', 'AG010004');
INSERT INTO vehicule VALUES ('3324GD54', 'C003', 'AG010006');
INSERT INTO vehicule VALUES ('3324GD55', 'C003', 'AG010006');
INSERT INTO vehicule VALUES ('3324GD56', 'C005', 'AG010006');
INSERT INTO vehicule VALUES ('3452GH75', 'C003', 'AG010008');
INSERT INTO vehicule VALUES ('3452GH76', 'C005', 'AG010008');
INSERT INTO vehicule VALUES ('3452GH77', 'C003', 'AG010008');
INSERT INTO vehicule VALUES ('3452GT55', 'C003', 'AG010002');
INSERT INTO vehicule VALUES ('3541ZZ43', 'C003', 'AG010015');
INSERT INTO vehicule VALUES ('3541ZZ44', 'C005', 'AG010015');
INSERT INTO vehicule VALUES ('3541ZZ45', 'C001', 'AG010015');
INSERT INTO vehicule VALUES ('3541ZZ46', 'C003', 'AG010015');
INSERT INTO vehicule VALUES ('374GT54', 'C001', 'AG010007');
INSERT INTO vehicule VALUES ('374GT55', 'C003', 'AG010007');
INSERT INTO vehicule VALUES ('43456GT97', 'C003', 'AG010005');
INSERT INTO vehicule VALUES ('43456GT98', 'C003', 'AG010005');
INSERT INTO vehicule VALUES ('4345KU66', 'C004', 'AG010002');
INSERT INTO vehicule VALUES ('434XV05', 'C005', 'AG010005');
INSERT INTO vehicule VALUES ('434XV06', 'C002', 'AG010006');
INSERT INTO vehicule VALUES ('4367FE11', 'C003', 'AG010003');
INSERT INTO vehicule VALUES ('4367FE12', 'C005', 'AG010003');
INSERT INTO vehicule VALUES ('454ED15', 'C002', 'AG010005');
INSERT INTO vehicule VALUES ('523DE67', 'C002', 'AG010006');
INSERT INTO vehicule VALUES ('53673YJ55', 'C004', 'AG010024');
INSERT INTO vehicule VALUES ('54573YJ56', 'C005', 'AG010024');
INSERT INTO vehicule VALUES ('54673YJ54', 'C003', 'AG010024');
INSERT INTO vehicule VALUES ('54673YJ57', 'C001', 'AG010024');
INSERT INTO vehicule VALUES ('654DE56', 'C003', 'AG010004');
INSERT INTO vehicule VALUES ('654DE57', 'C003', 'AG010004');
INSERT INTO vehicule VALUES ('677GV02', 'C002', 'AG010002');
INSERT INTO vehicule VALUES ('75653YH75', 'C005', 'AG010001');
INSERT INTO vehicule VALUES ('873KV04', 'C003', 'AG010004');
INSERT INTO vehicule VALUES ('873KV05', 'C001', 'AG010005');

create table ouverte(
    numAgence varchar2(8),
    codejour number(1),
    heureOuv date,
    HeureFerm date
);

INSERT INTO ouverte VALUES ('AG010001',1,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010001',2,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010001',3,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010001',4,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010001',5,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010001',6,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010002',1,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010002',2,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010002',3,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010002',4,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010002',5,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010002',6,to_date( '10:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010003',1,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010003',2,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010003',3,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010003',4,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010003',5,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010003',6,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010004',1,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010004',2,to_date( '10:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010004',3,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010004',4,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010004',5,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010004',6,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010005',1,to_date( '10:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010005',2,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010005',3,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010005',4,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010005',5,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010005',6,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010006',1,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010006',2,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010006',3,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010006',4,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010006',5,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010006',6,to_date( '10:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010007',1,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010007',2,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010007',3,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010007',4,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010007',5,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010007',6,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010008',1,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010008',2,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010008',3,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010008',4,to_date( '10:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010008',5,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010008',6,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010009',1,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010009',2,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010009',3,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010009',4,to_date( '10:00:00','HH24:MI:SS'),to_date('18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010009',5,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010009',6,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010010',1,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010010',2,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010010',3,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010010',4,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010010',5,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010010',6,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010011',1,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010011',2,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010011',3,to_date( '10:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010011',4,to_date('09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010011',5,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010011',6,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010012',1,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010012',2,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010012',3,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010012',4,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010012',5,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010012',6,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010013',1,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010013',2,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010013',3,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010013',4,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010013',5,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010013',6,to_date('09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010014',1,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010014',2,to_date( '10:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010014',3,to_date( '10:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010014',4,to_date( '09:00:00','HH24:MI:SS'),to_date('18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010014',5,to_date( '09:00:00','HH24:MI:SS'),to_date('18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010014',6,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010015',1,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010015',2,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010015',3,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010015',4,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010015',5,to_date( '10:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010015',6,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010016',1,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010016',2,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010016',3,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010016',4,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010016',5,to_date( '10:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010016',6,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010017',1,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010017',2,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010017',3,to_date( '10:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010017',4,to_date( '09:00:00','HH24:MI:SS'),to_date('18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010017',5,to_date( '09:00:00','HH24:MI:SS'),to_date('18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010017',6,to_date('09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010018',1,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010018',2,to_date( '10:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010018',3,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010018',4,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010018',5,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010018',6,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010019',1,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010019',2,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010019',3,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010019',4,to_date('10:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010019',5,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010019',6,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010020',1,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010020',2,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010020',3,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010020',4,to_date( '10:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010020',5,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010020',6,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010021',1,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010021',2,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010021',3,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010021',4,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010021',5,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010021',6,to_date( '10:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010022',1,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010022',2,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010022',3,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010022',4,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010022',5,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010022',6,to_date( '10:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010023',1,to_date( '10:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010023',2,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010023',3,to_date( '09:00:00','HH24:MI:SS'),to_date( '19:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010023',4,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010023',5,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010023',6,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010024',1,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010024',2,to_date( '10:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010024',3,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010024',4,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010024',5,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010024',6,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010025',1,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010025',2,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010025',3,to_date( '10:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010025',4,to_date( '09:00:00','HH24:MI:SS'),to_date( '18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010025',5,to_date( '09:00:00','HH24:MI:SS'),to_date('18:00:00','HH24:MI:SS'));
INSERT INTO ouverte VALUES ('AG010025',6,to_date( '09:00:00','HH24:MI:SS'),to_date( '12:00:00','HH24:MI:SS'));

create table lier(
    numAgence1 varchar2(8),
    numAgence2 varchar2(8)
);

INSERT INTO lier VALUES ('AG010004', 'AG010005');
INSERT INTO lier VALUES ('AG010001', 'AG010007');
INSERT INTO lier VALUES ('AG010006', 'AG010008');
INSERT INTO lier VALUES ('AG010023', 'AG010009');
INSERT INTO lier VALUES ('AG010009', 'AG010011');
INSERT INTO lier VALUES ('AG010023', 'AG010011');
INSERT INTO lier VALUES ('AG010010', 'AG010012');
INSERT INTO lier VALUES ('AG010003', 'AG010015');
INSERT INTO lier VALUES ('AG010018', 'AG010021');
INSERT INTO lier VALUES ('AG010016', 'AG010022');
INSERT INTO lier VALUES ('AG010002', 'AG010024');
INSERT INTO lier VALUES ('AG010017', 'AG010025');

create table reservation(
    numReserv varchar2(6) primary key,
    dateReserv date,
    dateDep date,
    deteRetour date,
    prixEstime number(5,2),
    numClient varchar2(6),
    numAgence varchar2(8),
    numVehic varchar2(10),
    RemiseVehic number(1)
);

INSERT INTO reservation VALUES ('R00001', '05/02/2020', '12/02/2020', '24/02/2020', 45.00, 'CL0001', 'AG010001', '100XV01',1);
INSERT INTO reservation VALUES ('R00002', '05/02/2020', '18/02/2020', '25/02/2020', 29.00, 'CL0002', 'AG010002', '677GV02',1);
INSERT INTO reservation VALUES ('R00003', '14/01/2020', '23/03/2020', '31/03/2020', 540.00, 'CL0003', 'AG010003', '212XV03',1);
INSERT INTO reservation VALUES ('R00004', '15/01/2020', '27/02/2020', '28/02/2020', 0.00, 'CL0004', 'AG010007', '100XV07',1);
INSERT INTO reservation VALUES ('R00005', '16/01/2020', '28/02/2020', '01/03/2020', 0.00, 'CL0005', 'AG010024', '54673YJ57',NULL);
INSERT INTO reservation VALUES ('R00006', '17/01/2020', '01/03/2020', '02/03/2020', 0.00, 'CL0001', 'AG010001', '233DE34',1);
INSERT INTO reservation VALUES ('R00007', '18/01/2020', '02/03/2020', '10/03/2020', 0.00, 'CL0002', 'AG010002', '3245FT77',NULL);
INSERT INTO reservation VALUES ('R00008', '19/01/2020', '03/03/2020', '04/03/2020', 0.00, 'CL0003', 'AG010003', '4367FE11',NULL);
INSERT INTO reservation VALUES ('R00009', '20/01/2020', '06/03/2020', '15/03/2020', 0.00, 'CL0004', 'AG010024', '54573YJ56',NULL);
INSERT INTO reservation VALUES ('R00010', '21/01/2020', '05/03/2020', '06/03/2020', 34.00, 'CL0005', 'AG010007', '100XV07',NULL);
INSERT INTO reservation VALUES ('R00011', '22/01/2020', '06/04/2020', '07/04/2020', 0.00, 'CL0001', 'AG010007', '100XV01',NULL);
INSERT INTO reservation VALUES ('R00012', '23/01/2020', '07/03/2020', '11/03/2020', 0.00, 'CL0002', 'AG010003', '4367FE11',NULL);
INSERT INTO reservation VALUES ('R00013', '24/01/2020', '08/03/2020', '15/03/2020', 0.00, 'CL0003', 'AG010024', '54673YJ57',NULL);
INSERT INTO reservation VALUES ('R00014', '25/01/2020', '09/02/2020', '10/02/2020', 0.00, 'CL0004', 'AG010002', '677GV02',1);
INSERT INTO reservation VALUES ('R00015', '26/01/2020', '10/03/2020', '11/03/2020', 0.00, 'CL0005', 'AG010003', '100XV03',NULL);
INSERT INTO reservation VALUES ('R00016', '27/01/2020', '16/04/2020', '18/04/2020', 0.00, 'CL0001', 'AG010024', '53673YJ55',NULL);
INSERT INTO reservation VALUES ('R00017', '28/01/2020', '12/03/2020', '13/03/2020', 0.00, 'CL0002', 'AG010003', '4367FE11',NULL);
INSERT INTO reservation VALUES ('R00018', '29/01/2020', '13/04/2020', '14/04/2020', 0.00, 'CL0003', 'AG010002', '677GV02',NULL);
INSERT INTO reservation VALUES ('R00019', '30/01/2020', '11/02/2020', '15/02/2020', 76.00, 'CL0004', 'AG010003', '100XV13',NULL);
INSERT INTO reservation VALUES ('R00020', '31/01/2020', '15/03/2020', '16/03/2020', 0.00, 'CL0005', 'AG010007', '320XS06',NULL);
INSERT INTO reservation VALUES ('R00021', '01/02/2020', '16/03/2020', '17/03/2020', 0.00, 'CL0001', 'AG010003', '100XV13',1);
INSERT INTO reservation VALUES ('R00022', '02/02/2020', '17/03/2020', '18/03/2020', 0.00, 'CL0002', 'AG010024', '100XA10',NULL);
INSERT INTO reservation VALUES ('R00023', '17/01/2020', '01/03/2020', '02/03/2020', 0.00, 'CL0003', 'AG010001', '75653YH75',NULL);
INSERT INTO reservation VALUES ('R00024', '18/01/2020', '02/03/2020', '05/03/2020', 0.00, 'CL0004', 'AG010007', '374GT54',NULL);
INSERT INTO reservation VALUES ('R00025', '19/01/2020', '03/03/2020', '04/03/2020', 0.00, 'CL0005', 'AG010024', '100XA10',NULL);
INSERT INTO reservation VALUES ('R00026', '20/01/2020', '04/03/2020', '05/03/2020', 0.00, 'CL0001', 'AG010003', '4367FE12',NULL);
INSERT INTO reservation VALUES ('R00027', '21/01/2020', '05/03/2020', '06/03/2020', 0.00, 'CL0002', 'AG010024', '100XA10',NULL);
INSERT INTO reservation VALUES ('R00028', '22/01/2020', '06/03/2020', '07/03/2020', 0.00, 'CL0003', 'AG010007', '374GT54',NULL);
INSERT INTO reservation VALUES ('R00029', '23/01/2020', '07/04/2020', '09/04/2020', 0.00, 'CL0004', 'AG010003', '100XV03',NULL);
INSERT INTO reservation VALUES ('R00030', '10/02/2020', '25/03/2020', '26/03/2020', 87.00, 'CL0005', 'AG010024', '100XA10',NULL);
INSERT INTO reservation VALUES ('R00031', '11/02/2020', '26/03/2020', '27/03/2020', 0.00, 'CL0001', 'AG010001', '100XV11',NULL);
INSERT INTO reservation VALUES ('R00032', '12/02/2020', '27/03/2020', '31/03/2020', 0.00, 'CL0002', 'AG010003', '100XV03',NULL);
INSERT INTO reservation VALUES ('R00033', '13/02/2020', '28/03/2020', '29/03/2020', 0.00, 'CL0003', 'AG010024', '100XA10',NULL);
INSERT INTO reservation VALUES ('R00034', '14/02/2020', '29/03/2020', '31/03/2020', 134.00, 'CL0004', 'AG010003', '4367FE11',NULL);
INSERT INTO reservation VALUES ('R00035', '21/01/2020', '05/04/2020', '06/04/2020', 0.00, 'CL0005', 'AG010007', '320XS06',NULL);
INSERT INTO reservation VALUES ('R00036', '22/01/2020', '06/03/2020', '07/03/2020', 0.00, 'CL0001', 'AG010024', '54673YJ57',NULL);
INSERT INTO reservation VALUES ('R00037', '23/01/2020', '08/02/2020', '17/02/2020', 165.00, 'CL0002', 'AG010007', '374GT54',1);
INSERT INTO reservation VALUES ('R00038', '10/02/2020', '27/02/2020', '28/02/2020', 0.00, 'CL0003', 'AG010007','320XS06',1);
INSERT INTO reservation VALUES ('R00039', '11/02/2020', '26/03/2020', '27/03/2020', 0.00, 'CL0004', 'AG010001', '75653YH75',NULL);
INSERT INTO reservation VALUES ('R00040', '12/02/2020', '27/03/2020', '31/03/2020', 43.00, 'CL0005', 'AG010007', '374GT54',NULL);

create table facture(
    numFact varchar2(5) primary key ,
    dateFact date,
    montFact number(6,2),
    remise number(4,2),
    numReserv varchar2(6),
    Réglé varchar2(1)
);

INSERT INTO facture VALUES ('F0001', '24/02/2020', 720.00, 76.00, 'R00001','O');
INSERT INTO facture VALUES ('F0002', '25/02/2020', 350.00, 0.00, 'R00002','O');
INSERT INTO facture VALUES ('F0003', '28/02/2020', 50.00, 0.00, 'R00004','O');
INSERT INTO facture VALUES ('F0004', '01/03/2020', 4380.00, 0.00, 'R00005','N');
INSERT INTO facture VALUES ('F0005', '02/03/2020', 60.00, 0.00, 'R00006','N');
INSERT INTO facture VALUES ('F0006', '10/03/2020', 280.00, 25.00, 'R00007','N');
INSERT INTO facture VALUES ('F0007', '04/03/2020', 45.00, 0.00, 'R00008','N');
INSERT INTO facture VALUES ('F0008', '15/03/2020', 315.00, 0.00, 'R00009','N');
INSERT INTO facture VALUES ('F0009', '06/03/2020', 50.00, 0.00, 'R00010','N');
INSERT INTO facture VALUES ('F0010', '11/03/2020', 180.00, 0.00, 'R00012','N');
INSERT INTO facture VALUES ('F0011', '15/03/2020', 420.00, 50.00, 'R00013','N');
INSERT INTO facture VALUES ('F0012', '10/02/2020', 50.00, 0.00, 'R00014','N');
INSERT INTO facture VALUES ('F0013', '15/02/2020', 140.00, 0.00, 'R00019','N');
INSERT INTO facture VALUES ('F0014', '02/03/2020', 35.00, 0.00, 'R00023','N');
INSERT INTO facture VALUES ('F0015', '05/03/2020', 180.00, 0.00, 'R00024','O');
INSERT INTO facture VALUES ('F0016', '04/03/2020', 50.00, 0.00, 'R00025','N');
INSERT INTO facture VALUES ('F0017', '05/03/2020', 35.00, 0.00, 'R00026','O');
INSERT INTO facture VALUES ('F0018', '06/03/2020', 50.00, 0.00, 'R00027','N');
INSERT INTO facture VALUES ('F0019', '07/03/2020', 60.00, 0.00, 'R00028','N');
INSERT INTO facture VALUES ('F0020', '07/03/2020', 60.00, 0.00, 'R00036','N');
INSERT INTO facture VALUES ('F0021', '17/02/2020', 540.00, 95.00, 'R00037','N');
INSERT INTO facture VALUES ('F0022', '28/02/2020', 100.00, 10.00, 'R00038','O');

alter table Client add constraint c10 foreign key (codePays) references Pays(codePays);

alter table agence add constraint c11 foreign key (codePays) references Pays(codePays);

alter table reservation add constraint c12 foreign key (numClient) references client(numClient);
alter table reservation add constraint c13 foreign key (numAgence) references agence(numAgence);
alter table reservation add constraint c14 foreign key (numVehic) references vehicule(numVehic);

alter table vehicule add constraint c15 foreign key (codeCateg) references categorie(codeCateg);
alter table vehicule add constraint c16 foreign key (numAgence) references agence(numAgence);

alter table facture add constraint c17 foreign key (numReserv) references reservation(numReserv);

alter table ouverte add constraint c18 foreign key (numAgence) references agence(numAgence);
alter table ouverte add constraint c19 foreign key (codejour) references jour(codejour);

alter table lier add constraint c20 foreign key (numAgence1) references agence(numAgence);
alter table lier add constraint c21 foreign key (numAgence2) references agence(numAgence);

--A3:
select * from agence natural join reservation having max(count(numAgence));
select * from agence natural join reservation where numAgence = (select max(count(numAgence)) from reservation);

--A4:
select nom, codePostal, ville from client natural join reservation where dateReserv not in (select dateReserv from reservation where to_char(dateReserv, 'MM')='02');
-- 28 lignes

--B1:

--Ecrire une fonction stockée permettant de déterminer s’il
--existe un véhicule disponible d’une
--catégorie donnée sur une période donnée (datedeb, date fin)
--En sortie la fonction retourne le premier numvehic disponible.
--En cas derreur ou d’indisponibilité de véhicule la fonction retourne  ||
--la valeur NULL.
--Traiter les cas d'erreur avec des exceptions.






create table lol(
    codePays number(2) primary key,
    nomPays varchar2(15)
);














