SHOW DATABASES;
USE tienda;
SHOW TABLES;
DESCRIBE puesto;
DESCRIBE venta;
DESCRIBE articulo;

SHOW TABLES;
DESCRIBE articulo;
SELECT * FROM articulo WHERE precio>1000 AND iva>100;

DESCRIBE venta;
SELECT * FROM venta WHERE id_articulo IN(135,963) AND id_empleado IN(835,369);





SHOW TABLES;
DESCRIBE puesto;
SELECT * FROM puesto ORDER BY salario DESC LIMIT 5;

