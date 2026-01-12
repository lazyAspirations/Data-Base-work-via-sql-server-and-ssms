INSERT INTO Etudiant VALUES
(1, 'Benziane', 'Amine', '2002-05-14', 'Alger', 'L1', 'A1'),
(2, 'Khellaf', 'Sara', '2001-09-21', 'Oran', 'L2', 'B1'),
(3, 'Mokhtar', 'Nabil', '2000-12-03', 'Constantine', 'L3', 'A2'),
(4, 'Hachemi', 'Lina', '2002-03-11', 'Blida', 'L1', 'A1'),
(5, 'Tari', 'Yacine', '2001-07-29', 'Tizi Ouzou', 'L2', 'B2');

INSERT INTO Professeur VALUES
(1, 'Haddad', 'Karim', 'Bases de données'),
(2, 'Belkacem', 'Rania', 'Algorithmique'),
(3, 'Saadi', 'Farid', 'Réseaux'),
(4, 'Bouzid', 'Nora', 'Programmation Java'),
(5, 'Meziane', 'Omar', 'Systèmes d’exploitation');

INSERT INTO Cours VALUES
(101, 'Bases de données', 'S1', 1),
(102, 'Algorithmique', 'S2', 2),
(103, 'Réseaux', 'S3', 3),
(104, 'Programmation Java', 'S4', 4),
(105, 'Systèmes d’exploitation', 'S5', 5);

INSERT INTO Inscription VALUES
(1, 101, 14.5),
(1, 102, 12.0),
(2, 101, 15.0),
(3, 103, 10.0),
(4, 101, 11.0),
(4, 104, 16.0),
(5, 105, 13.5);