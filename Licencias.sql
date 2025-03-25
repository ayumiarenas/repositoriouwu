CREATE TABLE Licencias (
    Id_empleado INT(15) NOT NULL,
    Licencia VARCHAR(50)NOT NULL,
    PRIMARY KEY(Id_empleado, Licencia)
);
INSERT INTO Licencias VALUES
(1001, 'Tipo A'),
(1001, 'Tipo B'),
(1001, 'Tipo C'),
(2002, 'Tipo A'),
(2002, 'Tipo B'),
(2002, 'Tipo C'),
(3003, 'Tipo A'),
(3003, 'Tipo D'),
(4004, 'Tipo A'),
(4004, 'Tipo B'),
(4004, 'Tipo D'),
(5005, 'Tipo A'),
(5005, 'Tipo B'),
(5005, 'Tipo D');

SELECT t1.Id_empleado, t2.Id_empleado, COUNT(*) AS Coincidencias
FROM Licencias t1
JOIN Licencias t2 
    ON t1.Licencia = t2.Licencia 
    AND t1.Id_empleado <> t2.Id_empleado
GROUP BY t1.Id_empleado, t2.Id_empleado
HAVING COUNT(*) = (
    SELECT COUNT(*) 
    FROM Licencias l1 
    WHERE l1.Id_empleado = t1.Id_empleado
)
AND COUNT(*) = (
    SELECT COUNT(*) 
    FROM Licencias l2 
    WHERE l2.Id_empleado = t2.Id_empleado
);