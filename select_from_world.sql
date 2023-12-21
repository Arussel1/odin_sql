SELECT name, continent, population FROM world;
SELECT name FROM world WHERE population >= 200000000;
SELECT name, gdp/population FROM world WHERE population >= 200000000;
SELECT name, population/1000000 FROM world WHERE continent='South America';
SELECT name,population FROM world WHERE name in ('France','Germany','Italy');
SELECT name FROM world WHERE name LIKE 'United%';
SELECT name,population, area FROM world WHERE population > 250000000 OR AREA > 3000000;
SELECT name,population, area FROM world WHERE population > 250000000 XOR AREA > 3000000;
SELECT name, ROUND(population/1000000,2), ROUND(gdp/1000000000,2) FROM world WHERE continent='South America';
SELECT name,ROUND(gdp/population/1000) * 1000 FROM world WHERE gdp > 1000000000000;
SELECT name, capital FROM world WHERE LENGTH(name) = LENGTH(capital);
SELECT name, capital FROM world WHERE LEFT(name,1) = LEFT(capital,1) and name != capital;
SELECT name FROM world WHERE name LIKE '%e%' AND name LIKE '%i%' AND name LIKE '%a%' AND name LIKE '%o%' AND name LIKE '%u%' AND name NOT LIKE '% %';
/**
1. SELECT name
  FROM world
 WHERE name LIKE 'U%'
 2.SELECT population
  FROM world
 WHERE name = 'United Kingdom'
 3. 'name' should be name
 4. Nauru	990
 5. SELECT name, population
  FROM world
 WHERE continent IN ('Europe', 'Asia')
 6. SELECT name FROM world
 WHERE name IN ('Cuba', 'Togo')
 7. Brazil
Colombia