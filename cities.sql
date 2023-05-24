CREATE TABLE Capitals (
  CapitalID INT PRIMARY KEY,
  Capital VARCHAR(50),
  CountryID INT,
  FOREIGN KEY (CountryID) REFERENCES Countries (CountryID)
);

INSERT INTO Capitals (CapitalID, Capital, CountryID) VALUES
  (1, 'Kabul', 1),
  (2, 'Tirana', 2),
  (3, 'Algiers', 3),
  (4, 'Andorra la Vella', 4),
  (5, 'Luanda', 5),
  (6, 'Saint Johns', 6),
  (7, 'Buenos Aires', 7),
  (8, 'Yerevan', 8),
  (9, 'Canberra', 9),
  (10, 'Vienna', 10),
  (11, 'Baku', 11),
  (12, 'Nassau', 12),
  (13, 'Manama', 13),
  (14, 'Dhaka', 14),
  (15, 'Bridgetown', 15),
  (16, 'Minsk', 16),
  (17, 'Brussels', 17),
  (18, 'Belmopan', 18),
  (19, 'Porto-Novo', 19),
  (20, 'Thimphu', 20),
  (21, 'La Paz, Sucre', 21),
  (22, 'Sarajevo', 22),
  (23, 'Gaborone', 23),
  (24, 'Brasília', 24),
  (25, 'Bandar Seri Begawan', 25),
  (26, 'Sofia', 26),
  (27, 'Ouagadougou', 27),
  (28, 'Bujumbura', 28),
  (29, 'Praia', 29),
  (30, 'Phnom Penh', 30),
  -- Add more capitals as needed
  ;