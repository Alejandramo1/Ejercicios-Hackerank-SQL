-- EJERCICIO NUMERO 1: Revising the Select Query I
-- Link ejercicio:https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=true
-- Solución

SELECT * 
FROM city 
WHERE population>100000 
AND countrycode = 'USA';

-- EJERCICIO NUMERO 2: Revising the Select Query II
-- Link ejercicio: https://www.hackerrank.com/challenges/revising-the-select-query-2/problem?isFullScreen=true
-- Solución

SELECT name
FROM city 
WHERE population>120000 
AND countrycode = 'USA';

-- EJERCICIO NUMERO 3: Weather Observation Station 10
-- Link ejercicio: https://www.hackerrank.com/challenges/weather-observation-station-10/problem?isFullScreen=true&h_r=next-challenge&h_v=zen
-- Solución 1:

SELECT DISTINCT city
FROM STATION
WHERE NOT (city LIKE '%a' 
            OR city LIKE '%e' 
            OR city LIKE '%i' 
            OR city LIKE '%o' 
            OR city LIKE '%u');

-- Solucion 2:

-- Utilizando expresiones regulares 

SELECT DISTINCT city
FROM STATION
WHERE city REGEXP '[^aeiouAEIOU]$';

-- EJERCICIO NUMERO 11: Weather Observation Station 11
-- Link ejercicio: https://www.hackerrank.com/challenges/weather-observation-station-11/problem?isFullScreen=true
-- Primera forma de resolverlo en MYSQL

SELECT DISTINCT city 
FROM station
WHERE NOT (city LIKE 'A%' OR
      city LIKE 'E%' OR
      city LIKE 'I%' OR
      city LIKE 'O%' OR
      city LIKE 'U%')
OR NOT (city LIKE '%A' OR
      city LIKE '%E' OR
      city LIKE '%I' OR
      city LIKE '%O' OR
      city LIKE '%U');
      
-- En esta consulta, utilizamos el operador LIKE para buscar los nombres que comienzan o terminan con vocales y luego usamos el operador NOT para excluirlos. 
-- La condición NOT (nombre LIKE 'a%' OR nombre LIKE 'e%' OR nombre LIKE 'i%' OR nombre LIKE 'o%' OR nombre LIKE 'u%') excluye los nombres que comienzan con vocales, 
-- mientras que la condición NOT (nombre LIKE '%a' OR nombre LIKE '%e' OR nombre LIKE '%i' OR nombre LIKE '%o' OR nombre LIKE '%u') excluye los nombres que terminan con vocales.


-- Segunda forma 

-- Utilizando expresiones regulares

SELECT DISTINCT city
FROM station
WHERE city REGEXP '^[^aeiouAEIOU]'
OR city REGEXP '[^aeiouAEIOU]$';

-- La expresión regular ^[^aeiouAEIOU] El símbolo ^ indica el inicio de la cadena, seguido de la clase de caracteres [^aeiouAEIOU], 
-- que significa cualquier carácter que no sea una vocal en mayúscula o minúscula. Esto asegura que el primer carácter de la cadena no sea una vocal.

-- La expresión [^aeiouAEIOU]$ significa cualquier carácter que no sea una vocal en mayúscula o minúscula, seguido del final de la cadena $. 
-- Esto asegura que el último carácter de la cadena no sea una vocal.


-- EJERCICIO NUMERO 12: Weather Observation Station 12
-- Link ejercicio: https://www.hackerrank.com/challenges/weather-observation-station-12/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
-- Primera forma de resolverlo en MYSQL

SELECT DISTINCT city 
FROM STATION 
WHERE city REGEXP '^[^AEIOUaeiou].*[^AEIOUaeiou]$';

-- La expresion .* indica que puede haber cualquier cantidad de caracteres antes de un caracter especial

-- EJERCICIO NUMERO 13: Higher Than 75 Marks
-- Link ejercicio: https://www.hackerrank.com/challenges/more-than-75-marks/problem?h_r=next-challenge&h_r=next-challenge&h_r=next-challenge&h_v=zen&h_v=zen&h_v=zen&isFullScreen=true
-- Primera forma con la funcion SUBSTR 

SELECT name
FROM students 
WHERE marks > 75
ORDER BY SUBSTR(name,-3)ASC, ID ASC; -- La sintaxis SUBSTR permite extraer los ultimos 3 caracteres 

-- Segunda forma funcion RIGTH

SELECT name
FROM students 
WHERE marks > 75
ORDER BY RIGHT(name,3)ASC, ID ASC; -- La sintaxis SUBSTR permite extraer los ultimos 3 caracteres 

-- EJERCICIO NUMERO 14: Employee Names
-- Link ejercicio: https://www.hackerrank.com/challenges/name-of-employees/problem?h_r=next-challenge&h_r=next-challenge&h_r=next-challenge&h_v=zen&h_v=zen&h_v=zen&isFullScreen=true&h_r=next-challenge&h_v=zen
-- Solucion

SELECT name
FROM employee
ORDER BY name ASC;

-- EJERCICIO NUMERO 15: Employee Salaries
-- Link ejercicio: https://www.hackerrank.com/challenges/salary-of-employees/problem?h_r=next-challenge&h_r=next-challenge&h_r=next-challenge&h_v=zen&h_v=zen&h_v=zen&isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

SELECT name
FROM employee
WHERE salary >2000 AND months < 10;



