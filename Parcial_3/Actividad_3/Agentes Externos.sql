 Grant SELECT ON Base_Insana.Iguana TO 'AgentesExternos'@'localhost';
REVOKE SELECT ON Base_Insana.Iguana FROM 'AgentesExternos'@'localhost';



Grant SELECT ON Base_Insana.Iguana TO 'PO'@'localhost';
REVOKE SELECT ON Base_Insana.Iguana FROM 'PO'@'localhost';


Grant UPDATE, DELETE, CREATE ON Base_Insana.Iguana TO 'PM'@'localhost';
REVOKE UPDATE, DELETE, CREATE ON Base_Insana.Iguana FROM 'PM'@'localhost';


Grant UPDATE, DROP, CREATE ON Base_Insana.Iguana TO 'Architect'@'localhost';
REVOKE UPDATE, DROP, CREATE ON Base_Insana.Iguana FROM 'Architect'@'localhost';


Grant SELECT ON Base_Insana.Iguana TO 'BA'@'localhost';
REVOKE SELECT ON Base_Insana.Iguana FROM 'BA'@'localhost';


Grant SELECT ON Base_Insana.Iguana TO 'Developer'@'localhost';
REVOKE SELECT ON Base_Insana.Iguana FROM 'Developer'@'localhost';