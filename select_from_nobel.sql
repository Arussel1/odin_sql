SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950;

SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'literature';

SELECT yr, subject FROM nobel WHERE winner LIKE 'Albert Einstein';

SELECT winner FROM nobel WHERE subject='peace' AND yr > 1999;

SELECT * FROM nobel WHERE yr < 1990 AND yr > 1979 AND subject='literature';

SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Jimmy Carter',
                  'Barack Obama', 'Thomas Woodrow Wilson'
)

SELECT winner FROM nobel WHERE winner LIKE 'John%';

SELECT * FROM nobel WHERE subject='physics' AND yr = 1980 OR subject = 'chemistry' AND yr = 1984;

SELECT * FROM nobel WHERE yr = 1980 AND subject NOT IN ('chemistry','medicine');

SELECT * FROM nobel WHERE subject='medicine' AND yr < 1910 OR subject = 'literature' AND yr >= 2004;

SELECT * FROM nobel WHERE winner='PETER GRÜNBERG';

SELECT * FROM nobel WHERE winner='EUGENE O\'NEILL';

SELECT winner,yr,subject FROM nobel WHERE winner LIKE 'Sir%' ORDER BY yr DESC,winner;

SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('physics','chemistry'), subject,winner;

 
 /**
1.


 **/