CREATE TABLE "TYPE" (
	"id_type"	INTEGER,
	"libellé"	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("id_type" AUTOINCREMENT)
);

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
