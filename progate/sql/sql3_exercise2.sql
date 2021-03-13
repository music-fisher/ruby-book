SELECT *
FROM players
JOIN countries
ON players.country_id = countries.id
WHERE countries.name = "日本"
AND height >= 180;