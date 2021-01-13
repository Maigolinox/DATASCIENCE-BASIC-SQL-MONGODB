/*SESION 3 RETOS*/
USE tienda;
SHOW KEYS FROM venta;
DESCRIBE empleado;
DESCRIBE puesto; 
SELECT * FROM empleado AS e
INNER JOIN puesto AS p
ON e.id_puesto=p.id_puesto;

SELECT * FROM puesto AS p 
LEFT JOIN empleado AS e
ON p.id_puesto=e.id_puesto;

SELECT * FROM puesto AS p
RIGHT JOIN empleado AS e
ON e.id_puesto=p.id_puesto;

#RETO 1#
SHOW TABLES;
#RETO 1.1#
SELECT e.id_empleado,e.nombre
FROM venta v
JOIN empleado e
ON v.id_empleado=e.id_empleado;

#RETO 1.2#
SELECT clave,nombre
FROM venta v
JOIN articulo a
ON v.id_articulo=a.id_articulo;

#RETO 1.3 ROUND ES PARA REDONDEAR# 
SELECT clave, ROUND(SUM(precio),2) AS total
FROM venta AS v
JOIN articulo AS a
  ON v.id_articulo = a.id_articulo
GROUP BY clave ORDER BY clave;

#RETO 2#

USE tienda;



CREATE VIEW R21S3Terron_1999 AS
SELECT p.nombre, CONCAT(e.nombre,' ',e.apellido_paterno)
FROM empleado e
JOIN puesto p
  ON e.id_puesto = p.id_puesto;
  
  SELECT * FROM R21S3Terron_199;
#22#
CREATE VIEW RETO22S3TERRON_1999 AS
SELECT CONCAT(e.nombre,' ',e.apellido_paterno) AS "NOMBRE_EMPLEADO", a.nombre AS "NOMBRE ARTICULO"
FROM venta v
JOIN empleado e
ON e.id_empleado=v.id_empleado
JOIN articulo a
ON v.id_articulo=a.id_articulo;


#23#
CREATE VIEW RETO23S3TERRON_1999 AS(
SELECT p.nombre,COUNT(v.clave) AS "NUMERO_VENTAS"
FROM empleado e
JOIN venta v
ON e.id_empleado=v.id_empleado
JOIN puesto p
ON e.id_puesto=p.id_puesto
GROUP BY p.nombre);