-- C
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
