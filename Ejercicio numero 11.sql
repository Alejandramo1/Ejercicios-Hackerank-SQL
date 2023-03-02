-- Weather Observation Station 11
-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

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
