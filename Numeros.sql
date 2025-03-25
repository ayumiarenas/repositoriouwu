CREATE TABLE Numeros (
    Id SERIAL NOT NUll,
    Entero INT(16) NOT NULL,
    PRIMARY KEY(Id, Entero)
);


INSERT INTO
 Numeros(Entero)
 VALUE
(5), 
(6),
(10),
(10),
(13),
(14),
(17),
(20),
(81),
(90),
(76);


SELECT Entero FROM Numeros;


WITH OrderedValues AS (
    SELECT Entero,
           ROW_NUMBER() OVER (ORDER BY Entero) AS RowAsc,
           ROW_NUMBER() OVER (ORDER BY Entero DESC) AS RowDesc,
           COUNT(*) OVER () AS TotalCount
    FROM Numeros
),
ModeValue AS (
    SELECT Entero AS Moda
    FROM Numeros
    GROUP BY Entero
    ORDER BY COUNT(*) DESC
    LIMIT 1
)
SELECT 
    AVG(Entero) AS Media,
    (SELECT Entero FROM OrderedValues WHERE RowAsc = (TotalCount + 1) / 2) AS Mediana,
    (SELECT Moda FROM ModeValue) AS Moda,
    (MAX(Entero) - MIN(Entero)) AS Rango
FROM Numeros;