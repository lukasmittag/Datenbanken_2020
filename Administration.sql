CREATE TABLE Ressort (name VARCHAR(50),
    Bezeichnung VARCHAR(200),
    ressort_id int AUTO_INCREMENT,
    PRIMARY KEY (ressort_id));

CREATE TABLE Mitarbeiter (name VARCHAR(50),
    last_name VARCHAR(50),
    mitarbeiter_id VARCHAR(20) NOT NULL,
    ressort_id int,
    PRIMARY KEY  (mitarbeiter_id),
    FOREIGN KEY (ressort_id) REFERENCES Ressort(ressort_id));

CREATE TABLE Projektleiter (
    mitarbeiter_id VARCHAR(20) NOT NULL,
    projektleiter_id int,
    projekt_id int,
    PRIMARY KEY  (projektleiter_id),
    FOREIGN KEY (mitarbeiter_id) REFERENCES Mitarbeiter(mitarbeiter_id),
     FOREIGN KEY (projekt_id) REFERENCES projekt(projekt_id));

CREATE TABLE Projekt (
    Projektbezeichnung VARCHAR(30),
    Projektkurzbeschreibung VARCHAR(300),
    Startdatum date,
    Abgabedatum date,
    projekt_id int AUTO_INCREMENT,
    projektgruppe_id int,
    PRIMARY KEY  (projekt_id),
    FOREIGN KEY (projektgruppe_id) REFERENCES Projektgruppe(projektgruppe_id));

CREATE TABLE Projektgruppe
(
    mitarbeiter_id   VARCHAR(20),
    projektleiter_id int,
    projektgruppe_id int AUTO_INCREMENT,
    PRIMARY KEY (projektgruppe_id),
    FOREIGN KEY (mitarbeiter_id) REFERENCES Mitarbeiter (mitarbeiter_id),
    FOREIGN KEY (projektleiter_id) REFERENCES Projektleiter (projektleiter_id)
);



