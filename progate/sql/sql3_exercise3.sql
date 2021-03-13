SELECT countries.name AS "国名",AVG(goals) AS "平均得点"
FROM players
JOIN countries
ON players.country_id = countries.id
GROUP BY countries.name;