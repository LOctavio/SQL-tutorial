SELECT id, title FROM movie WHERE yr=1962;

SELECT yr FROM movie WHERE title = 'Citizen Kane';

SELECT id, title, yr FROM movie WHERE title LIKE '%Star Trek%' ORDER BY yr;

SELECT id FROM actor WHERE name = 'Glenn Close';

SELECT id FROM movie WHERE title = 'Casablanca';

SELECT name FROM casting JOIN actor ON (actorid = id) WHERE movieid = 11768;

SELECT name FROM movie JOIN casting ON (movie.id = movieid) JOIN actor ON (actor.id = actorid) WHERE title = 'Alien';

SELECT title FROM movie JOIN casting ON (movie.id = movieid) JOIN actor ON (actor.id = actorid) WHERE name = 'Harrison Ford';

SELECT title FROM movie JOIN casting ON (movie.id = movieid) JOIN actor ON (actor.id = actorid) WHERE name = 'Harrison Ford' AND ord != 1;

SELECT title, name FROM movie JOIN casting ON (movie.id = movieid) JOIN actor ON (actor.id = actorid) WHERE ord = 1 AND yr = 1962;

SELECT yr,COUNT(title) FROM movie JOIN casting ON movie.id=movieid JOIN actor ON actorid=actor.id WHERE name='ROCK Hudson' GROUP BY yr HAVING COUNT(title) > 2;

SELECT title, name FROM movie JOIN casting ON (movie.id = movieid) JOIN actor ON (actor.id = actorid) WHERE movieid IN (SELECT movieid FROM casting WHERE actorid IN (SELECT id FROM actor WHERE name='Julie Andrews')) AND ord = 1;

SELECT name FROM actor JOIN casting ON (actor.id = actorid AND ord = 1) GROUP BY name HAVING SUM(ord) >= 15;

SELECT title, COUNT(actorid) FROM movie JOIN casting ON (movie.id = movieid) WHERE yr = 1978 GROUP BY title ORDER BY COUNT(actorid) DESC, title;

SELECT name FROM actor JOIN casting ON (actorid = actor.id) WHERE movieid IN (SELECT movieid FROM actor JOIN casting ON (actorid = actor.id) WHERE name = 'Art Garfunkel') AND name != 'Art Garfunkel';