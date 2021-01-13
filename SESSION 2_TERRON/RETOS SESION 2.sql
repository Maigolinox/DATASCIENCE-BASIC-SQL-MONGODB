#EJERCICIOS SESIÓN 2#VICTOR MIGUEL TERRÓN MACIAS#
SHOW DATABASES;
USE tienda;
SHOW TABLES;
DESCRIBE articulo;
#¿Qué artículos incluyen la palabra Pasta en su nombre?#
SELECT nombre FROM articulo WHERE nombre LIKE'%Pasta%';
#¿Qué artículos incluyen la palabra Cannelloni en su nombre?#
SELECT nombre FROM articulo WHERE nombre LIKE '%Canelloni%';
#¿Qué nombres están separados por un guión (-) por ejemplo Puree - Kiwi?#
SELECT nombre FROM articulo WHERE nombre LIKE '%-%';
SHOW TABLES;
DESCRIBE puesto;
#¿Qué puestos incluyen la palabra Designer?#
SELECT nombre FROM puesto WHERE nombre LIKE '%Designer%';
#¿Qué puestos incluyen la palabra Developer?#
SELECT nombre FROM puesto WHERE nombre LIKE '%Developer%';
#RETO 2#
SHOW TABLES;
DESCRIBE puesto;
#¿Cuál es el promedio de salario de los puestos?#
SELECT AVG(salario) AS "PROM_SALARIO" FROM puesto;
#¿Cuántos artículos incluyen la palabra Pasta en su nombre?#
SELECT COUNT(nombre) AS "NUM_PASTA" FROM articulo WHERE nombre LIKE '%Pasta%';
#¿Cuál es el salario MAX y min?#
SELECT MAX(salario) AS "MAXIMO", MIN(salario) AS "MINIMO" FROM puesto;
#¿CUÁL ES LA SUMA DEL SALARIO DE LOS ÚLTIMOS 5 AGREGADOS?#
SELECT SUM(salario) AS "SUMA_SALARIO" FROM puesto WHERE id_puesto>=995;
#RETO 3#
#¿Cuántos registros hay por cada uno de los puestos?#
SELECT nombre,COUNT(*) FROM puesto GROUP BY nombre;
#¿Cuánto dinero se paga en total por puesto?#
SELECT NOMBRE,SUM(salario) AS "SUMA_SALARIO" FROM puesto GROUP BY NOMBRE;
#¿Cuál es el número total de ventas por vendedor?#
SELECT id_empleado AS "ID_VENDEDOR",COUNT(clave) AS "VENTAS" FROM venta GROUP BY id_empleado;
#¿Cuál es el número total de ventas por artículo?#
SHOW TABLES;
DESCRIBE venta;
SELECT id_articulo AS "ID_ARTICULO",COUNT(*) AS "NUM_VENTAS" FROM venta GROUP BY id_articulo;