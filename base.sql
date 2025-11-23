CREATE TABLE Hardware (
    hardware_id INT PRIMARY KEY,
    nom VARCHAR(50),
    type VARCHAR(20),
    annee YEAR,
    details TEXT
);

CREATE TABLE Composants (
    composant_id INT PRIMARY KEY,
    nom VARCHAR(50),
    type VARCHAR(20),
    annee YEAR,
    details TEXT,
    hardware_id INT,
    FOREIGN KEY (hardware_id) REFERENCES Hardware(hardware_id)
);
