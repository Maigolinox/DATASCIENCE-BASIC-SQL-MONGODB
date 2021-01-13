USE H1N1;
DESCRIBE DATOS;
#SELECT Country FROM datos ORDER BY Deaths DESC;
/*FORMA 1 DE RESOLVER RETO 2 PREGUNTA 1*/
SELECT Country,SUM(Cases)AS "Total casos" FROM datos GROUP BY Country;
SELECT Country FROM datos WHERE Deaths IN (SELECT MAX(Deaths) FROM datos WHERE Country<>"Grand Total")LIMIT 1;
/*FORMA 2 DE RESOLVER RETO 2 PREGUNTA 1*/
SELECT Country FROM datos WHERE Deaths=(SELECT MAX(Deaths)FROM datos WHERE Country <>"Grand Total")LIMIT 1;
/*FORMA 1 DE RESOLVER RETO 2 PREGUNTA 2*/
SELECT Country FROM datos WHERE Deaths IN (SELECT MIN(Deaths) FROM datos) LIMIT 1;
/*FORMA 2 DE RESOLVER RETO 2 PREGUNTA 2*/
SELECT Country FROM datos WHERE Deaths=(SELECT MIN(Deaths)FROM datos)LIMIT 1;
/*RESOLUCION RETO 2 PREGUNTA 3*/
#SELECT SUM(Cases) FROM datos WHERE Country="United States of America";
SELECT Country FROM datos WHERE Cases=(SELECT MAX(Cases) FROM datos WHERE Country<>"Grand Total")LIMIT 1;
/*RESOLUCION RETO 2 PREGUNTA 4*/
SELECT Country FROM datos WHERE Cases=(SELECT MIN(Cases)FROM datos)LIMIT 1;
/*RESOLUCION RETO 2 PREGUNTA 5*/
SELECT AVG(Deaths)AS "MUERTES PROMEDIO" FROM datos WHERE Country<>"Grand Total";
/*RESOLUCION RETO 2 PREGUNTA 6*/
SELECT AVG(Cases)AS "CASOS PROMEDIO" FROM datos WHERE Country <>"Grand Total";
/*RESOLUCION RETO 2 PREGUNTA 7*/
SELECT Country FROM datos WHERE Country<>"Grand Total" GROUP BY Country ORDER BY Deaths DESC LIMIT 5;
/*RESOLUCION RETO 2 PREGUNTA 8*/
SELECT Country FROM datos WHERE Country<>"Grand Total" GROUP BY Country ORDER BY Deaths ASC LIMIT 5;
/*RETO 3*/
USE covid19;
DESCRIBE datos;
/*RESOLUCION RETO 3 PREGUNTA 1*/
SELECT Region FROM datos WHERE Confirmed IN(SELECT MAX(Confirmed) FROM datos);
/*RESOLUCION RETO 3 PREGUNTA 2*/
SELECT Region FROM datos WHERE Deaths=(SELECT MAX(Deaths) FROM datos);
/*RESOLUCION RETO 3 PREGUNTA 3 ??USANDO LAS COORDENADAS ENCUENTRA EL EPICENTRO DEL VIRUS*/
SELECT Region FROM datos WHERE Region="Mainland China" GROUP BY Region;
/*RESOLUCION RETO 3 PREGUNTA 4 ??USANDO EL EPICENTRO ENCUENTRA LAS 5 REGIONES MAS CERCANAS A DICHO EPICENTRO*/
SELECT Region FROM datos WHERE Lat BETWEEN 0 AND 100 AND Longi BETWEEN 100 AND 150 GROUP BY Region LIMIT 5;