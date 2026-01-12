-- les etudiants li inscrits  fal cours bd
SELECT e.Nom, e.Prenom
FROM Etudiant e
JOIN Inscription i ON e.Matricule = i.Matricule
JOIN Cours c ON i.CodeCours = c.CodeCours
WHERE c.NomCours = 'Bases de données';

-- Cours li i9iraho Haddad Karim
SELECT c.NomCours
FROM Cours c
JOIN Professeur p ON c.idProf = p.idProf
WHERE p.NomP = 'Haddad' AND p.PrenomP = 'Karim';

-- Moyenne ta3 les notes par cours
SELECT c.NomCours, AVG(i.Note) AS Moyenne
FROM Cours c
JOIN Inscription i ON c.CodeCours = i.CodeCours
GROUP BY c.NomCours;

-- Étudiants inscrits à + d’un cours
SELECT e.Nom, e.Prenom, COUNT(i.CodeCours) AS NbCours
FROM Etudiant e
JOIN Inscription i ON e.Matricule = i.Matricule
GROUP BY e.Matricule, e.Nom, e.Prenom
HAVING COUNT(i.CodeCours) > 1;

-- tt les étudiants m3a les cours ou  professeurs
SELECT e.Nom AS NomEtud, e.Prenom AS PrenomEtud,
       c.NomCours, p.NomP AS NomProf, p.PrenomP AS PrenomProf
FROM Etudiant e
JOIN Inscription i ON e.Matricule = i.Matricule
JOIN Cours c ON i.CodeCours = c.CodeCours
JOIN Professeur p ON c.idProf = p.idProf;

-- Nombre d'étudiants par niveau 
SELECT NivEtude, COUNT(*) AS NbEtudiants
FROM Etudiant
GROUP BY NivEtude;