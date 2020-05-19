SELECT name, continent, population FROM world;

SELECT name FROM world
WHERE population >= 200000000;

SELECT name, (gdp/population) AS per_capita_gdp FROM world
WHERE population >= 200000000;

SELECT name, (population/1000000) AS population FROM world WHERE continent = 'South America';

SELECT name, population FROM world WHERE name IN('France', 'Italy', 'Germany');

SELECT name FROM world WHERE name LIKE '%United%';

SELECT name, population, area FROM world WHERE area > 3000000 OR population > 250000000;

SELECT name, population, area FROM world WHERE (area > 3000000 AND NOT(population > 250000000)) OR (NOT(area > 3000000) AND population > 250000000);

SELECT name, ROUND(population/1000000,2) AS population, ROUND(gdp/1000000000, 2) AS gdp FROM world WHERE continent = 'South America'

SELECT name, ROUND(gdp/population, -3) AS per_capita_gdp FROM world WHERE gdp >= 1000000000000

SELECT name, capital FROM world WHERE LEN(name) = LEN(capital)

SELECT name, capital FROM world WHERE LEFT(name,1) = LEFT(capital,1) AND name != capital

SELECT name FROM world WHERE name LIKE '%a%' AND name LIKE'%e%' AND name LIKE'%i%' AND name LIKE '%o%' AND name LIKE '%u%' AND name NOT LIKE '% %'