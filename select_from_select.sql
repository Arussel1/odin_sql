SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia');
SELECT name FROM world 
WHERE gdp/population > (SELECT gdp/population FROM world WHERE name='United Kingdom') AND continent='Europe';
SELECT name,continent FROM world WHERE continent='South America' OR continent='Insular Oceania' ORDER BY name;
SELECT name,population FROM world WHERE population > (SELECT population FROM world WHERE name='United Kingdom') AND population < (SELECT population FROM world WHERE name='Germany');
SELECT name, CONCAT(ROUND(population/(SELECT population FROM world WHERE name='Germany') * 100),'%') AS percentage FROM world WHERE continent='Europe' ;
SELECT name FROM world WHERE gdp > ALL(SELECT gdp 
                                       FROM world
                                       WHERE continent='Europe');
SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent
          AND population>0);
SELECT continent,name FROM world x WHERE name <= ALL(SELECT name FROM world y WHERE y.continent=x.continent AND population > 0);
SELECT name,continent,population
FROM world x
WHERE continent NOT IN (SELECT continent 
          FROM world 
          WHERE population > 25000000);
SELECT name,continent 
FROM world x
WHERE population >= ALL(SELECT population * 3
                        FROM world y
                        WHERE y.continent=x.continent AND x.name NOT LIKE y.name);
/**
1.  SELECT region, name, population FROM bbc x WHERE population <= ALL (SELECT population FROM bbc y WHERE y.region=x.region AND population>0)
2.  SELECT name,region,population FROM bbc x WHERE 50000 < ALL (SELECT population FROM bbc y WHERE x.region=y.region AND y.population>0)
3. SELECT name, region FROM bbc x
 WHERE population < ALL (SELECT population/3 FROM bbc y WHERE y.region = x.region AND y.name != x.name)
4. France
Germany
Russia
Turkey
5. SELECT name FROM bbc
 WHERE gdp > (SELECT MAX(gdp) FROM bbc WHERE region = 'Africa')
6. SELECT name FROM bbc
 WHERE population < (SELECT population FROM bbc WHERE name='Russia')
   AND population > (SELECT population FROM bbc WHERE name='Denmark')
7. Bangladesh
India
Pakistan
**/
