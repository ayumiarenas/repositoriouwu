CREATE TABLE `detalle_horario` (
  `horario_id` int NOT NULL,
  `hora_salida` date NOT NULL,
  `hora_entrada` date NOT NULL,
  `codigo_incapacidad` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`horario_id`,`hora_salida`)
);

DESC detalle_horario;
+--------------------+-------------+------+-----+---------+-------+
| Field              | Type        | Null | Key | Default | Extra |
+--------------------+-------------+------+-----+---------+-------+
| horario_id         | int         | NO   | PRI | NULL    |       |
| hora_salida        | date        | NO   | PRI | NULL    |       |
| hora_entrada       | date        | NO   |     | NULL    |       |
| codigo_incapacidad | varchar(25) | YES  |     | NULL    |       |
+--------------------+-------------+------+-----+---------+-------+

SELECT * FROM horario;
+------------+--------------+
| horario_id | plantilla_id |
+------------+--------------+
|          1 |            5 |
|          2 |            1 |
|          3 |            3 |
|          4 |            2 |
|          5 |            4 |
+------------+--------------+


CREATE TABLE `USUARIOS` (
  `nombre` varchar(25) DEFAULT NULL,
  `apellido` varchar(25) DEFAULT NULL,
  `departamento` varchar(25) DEFAULT NULL
);

desc USUARIOS;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| nombre       | varchar(25) | YES  |     | NULL    |       |
| apellido     | varchar(25) | YES  |     | NULL    |       |
| departamento | varchar(25) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+

SELECT * FROM USUARIOS;
+---------+------------+--------------+
| nombre  | apellido   | departamento |
+---------+------------+--------------+
| Angel   | Castañeda  | De01         |
| Antonio | Correa     | De02         |
| Susana  | Godinez    | De03         |
| Bryan   | Lopez      | De04         |
| Roger   | Arenas     | De05         |
| Oscar   | Castro     | De06         |
| Marco   | Gonzales   | De07         |
| Carlos  | Martinez   | De08         |
| Josue   | Gaitan     | De09         |
| Juan    | Solis      | De10         |
+---------+------------+--------------+