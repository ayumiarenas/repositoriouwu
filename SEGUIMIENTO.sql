CREATE TABLE Seguimiento(
    Fecha VARCHAR(50) NOT NULL,
    Ajuste INT(15) NOT NULL,
    PRIMARY KEY(Fecha, Ajuste)
);

INSERT INTO 
Seguimiento
VALUES
('03/01/2025', 100),
('04/01/2025', 75),
('05/01/2025', -150),
('06/01/2025', 50),
('07/01/2025', -70);

SET 
    @Inventario = 0;

SELECT 
    Fecha,
    Ajuste,
    @Inventario := @Inventario + Ajuste AS Inventario
FROM 
    Seguimiento
ORDER BY 
    Fecha;