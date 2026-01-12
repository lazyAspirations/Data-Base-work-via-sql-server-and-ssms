CREATE TABLE Etudiant (
    Matricule INT PRIMARY KEY,
    Nom VARCHAR(50),
    Prenom VARCHAR(50),
    DateNaissance DATE,
    Adresse VARCHAR(100),
    NivEtude VARCHAR(20),
    Groupe VARCHAR(10)
);

CREATE TABLE Professeur (
    idProf INT PRIMARY KEY,
    NomP VARCHAR(50),
    PrenomP VARCHAR(50),
    Specialite VARCHAR(50)
);

CREATE TABLE Cours (
    CodeCours INT PRIMARY KEY,
    NomCours VARCHAR(50),
    Salle VARCHAR(20),
    idProf INT,
    FOREIGN KEY (idProf) REFERENCES Professeur(idProf)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE Inscription (
    Matricule INT,
    CodeCours INT,
    Note DECIMAL(4,2),
    PRIMARY KEY (Matricule, CodeCours),
    FOREIGN KEY (Matricule) REFERENCES Etudiant(Matricule)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (CodeCours) REFERENCES Cours(CodeCours)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);