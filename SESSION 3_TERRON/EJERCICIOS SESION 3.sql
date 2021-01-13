/*EJERCICIO 3*/
USE classicmodels;
/*EJERCICIO 3.1*/
SELECT o.orderNumber, sum(quantityOrdered)
FROM orderdetails d
JOIN orders o
ON d.orderNumber=o.orderNumber
GROUP BY orderNumber;
/*EJERCICIO 3.2*/
SELECT o.orderNumber,o.status,sum(od.priceEach*od.quantityOrdered) AS TOTAL
FROM orders AS o
JOIN orderdetails AS od
ON o.orderNumber=od.orderNumber GROUP BY orderNumber;
/*EJERCICIO 3.3*/
SELECT o.orderNumber,o.orderDate,od.orderLineNumber,p.productName,od.quantityOrdered,od.priceEach
FROM orders AS o
JOIN orderdetails AS od
ON o.orderNumber=od.orderNumber
JOIN products AS p
ON od.productCode=p.productCode;
/*EJERCICIO 3.4*/
SELECT od.orderNumber,p.productName,p.MSRP,od.priceEach
FROM orderdetails AS od
JOIN orders AS o
ON od.orderNumber=o.orderNumber
JOIN products AS p
ON od.productCode=p.productCode;
/*EJERCICIO 3.5*/
SELECT c.customerNumber,c.customerName,o.orderNumber,o.status
FROM customers AS c
LEFT JOIN orders AS o
ON o.customerNumber=c.customerNumber;
/*EJERCICIO 3.6*/
SELECT c.customerNumber,customerName
FROM customers AS c
LEFT JOIN orders AS o
ON o.customerNumber=c.customerNumber WHERE orderNumber IS NULL;
/*EJERCICIO 3.7*/
SELECT e.lastName,e.firstName,c.customerName,p.checkNumber,p.amount
FROM employees AS e
LEFT JOIN customers AS c
ON e.employeeNumber = c.salesRepEmployeeNumber
LEFT JOIN payments AS p
ON p.customerNumber=c.customerNumber ORDER BY customerName,checkNumber;
/*EJERCICIO 3.8*/
SELECT c.customerNumber,c.customerName,o.orderNumber,o.status
FROM customers AS c
RIGHT JOIN orders AS o
ON o.customerNumber=c.customerNumber;
SELECT c.customerNumber,customerName
FROM customers AS c
LEFT JOIN orders AS o
ON o.customerNumber=c.customerNumber WHERE orderNumber IS NULL;
SELECT e.lastName,e.firstName,c.customerName,p.checkNumber,p.amount
FROM employees AS e
LEFT JOIN customers AS c
ON e.employeeNumber = c.salesRepEmployeeNumber
LEFT JOIN payments AS p
ON p.customerNumber=c.customerNumber ORDER BY customerName,checkNumber;
#LEFT JOIN DEVUELVE LAS FILAS DE LA TABLA DE LA IZQUIERDA Y LAS QUE COINCIDAN DE LA DERECHA
#RIGHT JOIN DEVUELVE LAS FILAS DE LA TABLA DE LA DERECHA Y LAS FLAS QUE COINCIDAN DE LA TABLA IZQUIERDA
/*EJERCICIO 3.9*/
CREATE VIEW claveunicaterron1 AS ( 
SELECT e.lastName,e.firstName,c.customerName,p.checkNumber,p.amount FROM employees AS e LEFT JOIN customers AS c ON e.employeeNumber = c.salesRepEmployeeNumber
LEFT JOIN payments AS p ON p.customerNumber=c.customerNumber ORDER BY customerName,checkNumber
);
CREATE VIEW claveunicaterron2 AS ( 
SELECT c.customerNumber,customerName FROM customers AS c LEFT JOIN orders AS o ON o.customerNumber=c.customerNumber WHERE orderNumber IS NULL
);
CREATE VIEW claveunicaterron3 AS (
SELECT o.orderNumber, sum(quantityOrdered) FROM orderdetails d JOIN orders o ON d.orderNumber=o.orderNumber GROUP BY orderNumber
);