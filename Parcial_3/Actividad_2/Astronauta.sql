CREATE TABLE Astronauta (
    Id INT(16) NOT NULL,
    Trabajo VARCHAR(16) NOT NULL,
    Misiones  INT(16),
    PRIMARY KEY(Id, Misiones)
);


INSERT INTO
Astronauta
VALUES
(1, 'Navegador', 6),
(2, 'Navegador', 12),
(3, 'Navegador', 17),
(4, 'Geólogo', 21),
(5, 'Geólogo', 9),
(6, 'Geólogo', 8),
(7, 'Técnico', 13),
(8, 'Técnico', 2),
(9, 'Técnico', 7);


SELECT 
  Trabajo,
  (SELECT Id FROM Astronauta a2 WHERE a2.Trabajo = a1.Trabajo ORDER BY Misiones DESC LIMIT 1) AS `Experimentados`,
  (SELECT Id FROM Astronauta a2 WHERE a2.Trabajo = a1.Trabajo ORDER BY Misiones ASC LIMIT 1) AS `Menos Experimentados`
FROM 
  Astronauta a1
GROUP BY 
  Trabajo;


+-----------+----------------+----------------------+
| Trabajo   | Experimentados | Menos Experimentados |
+-----------+----------------+----------------------+
| Navegador |              3 |                    1 |
| Geólogo   |              4 |                    6 |
| Técnico   |              7 |                    8 |
+-----------+----------------+----------------------+