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
1. SELECT winner FROM nobel
 WHERE winner LIKE 'C%' AND winner LIKE '%n'
2. SELECT COUNT(subject) FROM nobel
 WHERE subject = 'Chemistry'
   AND yr BETWEEN 1950 and 1960
3. SELECT COUNT(DISTINCT yr) FROM nobel
 WHERE yr NOT IN (SELECT DISTINCT yr FROM nobel WHERE subject = 'Medicine')
4. 
Medicine	Sir John Eccles
Medicine	Sir Frank Macfarlane Burnet
5. SELECT yr FROM nobel
 WHERE yr NOT IN(SELECT yr 
                   FROM nobel
                 WHERE subject IN ('Chemistry','Physics'))
6. SELECT DISTINCT yr
  FROM nobel
 WHERE subject='Medicine' 
   AND yr NOT IN(SELECT yr FROM nobel 
                  WHERE subject='Literature')
   AND yr NOT IN (SELECT yr FROM nobel
                   WHERE subject='Peace')
7.
Chemistry	1
Literature	1
Medicine	2
Peace	1
Physics	1


 **/