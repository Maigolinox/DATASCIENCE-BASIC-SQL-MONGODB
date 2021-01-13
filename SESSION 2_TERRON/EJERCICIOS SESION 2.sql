#EJERCICIOS SESION 2#
SHOW DATABASES;
USE classicmodels;
SHOW TABLES;
DESCRIBE employees;
#Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre empiece con a#
SELECT employeeNumber,lastName,firstName FROM employees WHERE firstName LIKE 'A%';
#Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre termina con on#
SELECT employeeNumber,lastName,firstName FROM employees WHERE firstName LIKE '%on';
#Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre incluye la cadena on#
SELECT employeeNumber,lastName,firstName FROM employees WHERE firstName LIKE '%on%';
#Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyos nombres tienen tres letras e inician con T y finalizan con m#
SELECT employeeNumber,lastName,firstName FROM employees WHERE firstName LIKE 'T_m';
#Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre no inicia con B#
SELECT employeeNumber,lastName,firstName FROM employees WHERE firstName NOT LIKE 'B%';
#Dentro de la tabla products, obten el código de producto y nombre de los productos cuyo código incluye la cadena _20#
DESCRIBE products;
SELECT productCode AS "CODIGO_PROD",productName AS "NOMBRE_PROD" FROM products WHERE productCode LIKE '_20';
#Dentro de la tabla orderdetails, obten el total de cada orden#
SHOW TABLES;
DESCRIBE orderdetails;
SELECT orderNumber,COUNT(*) FROM orderdetails GROUP BY orderNumber;
#Dentro de la tabla orders obten el número de órdenes por año#
DESCRIBE orders;
SELECT YEAR(orderDate)AS ANO,COUNT(*) FROM orders GROUP BY ANO;
#Obten el apellido y nombre de los empleados cuya oficina está ubicada en USA.#
SELECT lastName,firstName FROM employees WHERE officeCode IN (SELECT officeCode FROM offices WHERE country='USA');
#Obten el número de cliente, número de cheque y cantidad del cliente que ha realizado el pago más alto#
SELECT customerNumber,checkNumber,amount FROM payments WHERE amount=(SELECT MAX(amount) FROM payments);
#Obten el número de cliente, número de cheque y cantidad de aquellos clientes cuyo pago es más alto que el promedio.#
SELECT customerNumber,checkNumber,amount FROM payments WHERE amount>(SELECT AVG(amount) FROM payments);
#Obten el nombre de aquellos clientes que no han hecho ninguna orden#
SELECT customerName FROM customers WHERE customerNumber NOT IN (SELECT customerNumber FROM orders);
#Obten el máximo, mínimo y promedio del número de productos en las órdenes de venta.#
SELECT MAX(quantityOrdered),MIN(quantityOrdered),AVG(quantityOrdered) FROM orderdetails;
#Dentro de la tabla orders, obten el número de órdenes que hay por cada estado#
SELECT status,COUNT(*) FROM orders GROUP BY status;