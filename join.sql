SELECT matchid, player FROM goal WHERE teamid = 'GER';

SELECT id,stadium,team1,team2 FROM game WHERE id = 1012;

SELECT player,teamid, stadium, mdate FROM game JOIN goal ON (id=matchid) WHERE teamid = 'GER';

SELECT team1, team2, player FROM game JOIN goal ON (id=matchid) WHERE player LIKE 'Mario%';

SELECT player ,teamid ,coach , gtime FROM goal JOIN eteam ON (teamid = id) WHERE gtime<=10;

SELECT mdate, teamname FROM game JOIN eteam ON (team1 = eteam.id) WHERE coach = 'Fernando Santos';

SELECT player FROM goal JOIN game ON (id = matchid) WHERE stadium = 'National Stadium, Warsaw';

SELECT DISTINCT player FROM game JOIN goal ON matchid = id  WHERE teamid != 'GER' AND (team1 = 'GER' XOR team2 = 'GER');

SELECT teamname, COUNT(teamid) FROM eteam JOIN goal ON id=teamid GROUP BY teamname;

SELECT stadium, COUNT(teamid) FROM game JOIN goal ON (matchid = id) GROUP BY stadium;

SELECT matchid,mdate,COUNT(teamid) FROM game JOIN goal ON matchid = id WHERE (team1 = 'POL' OR team2 = 'POL') GROUP BY matchid;

SELECT matchid, mdate, COUNT(teamid) FROM game JOIN goal ON (matchid = id) WHERE teamid = 'GER' GROUP BY id;

SELECT mdate, team1, SUM(CASE WHEN teamid=team1 THEN 1 ELSE 0 END) score1, team2, SUM(CASE WHEN teamid=team2 THEN 1 ELSE 0 END) score2 FROM game LEFT JOIN goal ON matchid = id GROUP BY mdate, matchid;