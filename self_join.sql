SELECT COUNT(1) FROM stops;

SELECT id FROM stops WHERE name = 'Craiglockhart';

SELECT id, name FROM stops JOIN route ON (stop = id) WHERE num = '4';

SELECT company, num, COUNT(*) FROM route WHERE stop=149 OR stop=53 GROUP BY company, num HAVING COUNT(*) = 2;

SELECT a.company, a.num, a.stop, b.stop FROM route a JOIN route b ON (a.company=b.company AND a.num=b.num) WHERE a.stop=53 and b.stop = 149;

SELECT a.company, a.num, stopa.name, stopb.name FROM route a JOIN route b ON (a.company=b.company AND a.num=b.num) JOIN stops stopa ON (a.stop=stopa.id) JOIN stops stopb ON (b.stop=stopb.id) WHERE stopa.name='Craiglockhart'AND stopb.name = 'London Road';

SELECT DISTINCT a.company,  a.num FROM route a JOIN route b ON (a.company=b.company AND a.num=b.num) WHERE a.stop=115 AND b.stop = 137;

SELECT a.company, a.num FROM route a JOIN route b ON (a.company=b.company AND a.num=b.num) JOIN stops stopa ON (a.stop=stopa.id) JOIN stops stopb ON (b.stop=stopb.id) WHERE stopa.name='Craiglockhart' and stopb.name = 'Tollcross';

SELECT DISTINCT stopb.name, b.company, b.num FROM route a JOIN route b ON (a.num = b.num AND a.company = b.company) JOIN stops stopa ON (a.stop = stopa.id) JOIN stops stopb ON (b.stop = stopb.id) WHERE stopa.name = 'Craiglockhart';