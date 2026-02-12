-- Création de la table TYPE
CREATE TABLE "TYPE" (
	"id_type"	INTEGER,
	"libellé"	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("id_type" AUTOINCREMENT)
);

-- Insertion des données de TYPE 

INSERT INTO Type (libellé) VALUES ('PC');
INSERT INTO Type (libellé) VALUES ('Écran');
INSERT INTO Type (libellé) VALUES ('CPU');
INSERT INTO Type (libellé) VALUES ('RAM');
INSERT INTO Type (libellé) VALUES ('Disque');
INSERT INTO Type (libellé) VALUES ('GPU');
INSERT INTO Type (libellé) VALUES ('Carte réseau');
INSERT INTO Type (libellé) VALUES ('OS');
INSERT INTO Type (libellé) VALUES ('Batterie');

 -- Création de la table MATERIEL
CREATE TABLE "MATERIEL" (
	"id_mat"	INTEGER,
	"nom"	TEXT NOT NULL,
	"année"	INTEGER,
	"details"	TEXT,
	"id_type"	INTEGER NOT NULL,
	"id_parent"	INTEGER,
	PRIMARY KEY("id_mat"),
	FOREIGN KEY("id_parent") REFERENCES "MATERIEL"("id_mat"),
	FOREIGN KEY("id_type") REFERENCES "TYPE"("id_type")
);


-- Insertion des données de MATERIEL

INSERT INTO MATERIEL VALUES (1, 'PC  1 – Unité centrale', 2016, NULL, 2 NULL) ;
INSERT INTO MATERIEL VALUES (2, 'PC 2 – Unité centrale', 2017, NULL, 2, NULL);
INSERT INTO MATERIEL VALUES (3, 'PC 3 – Portable', 2015, 'Inspiron 15-3558', 2, NULL);

INSERT INTO MATERIEL VALUES (4, 'Écran A', 2012, 'HP LA1951g – 19’’ – 1280×1024 – 60 Hz', 3, NULL);
INSERT INTO MATERIEL VALUES (5, 'Écran B', 2010, 'Dell E178FP – 17’’ – 1280×1024', 3, NULL);
INSERT INTO MATERIEL VALUES (6, 'Écran C', 2009, 'Samsung 933SN – 18.5’’ – 1366×768', 3, NULL);

