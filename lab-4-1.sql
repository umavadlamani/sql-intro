-- How many lifetime hits does Barry Bonds have?
SELECT players.last_name, players.id, SUM(stats.hits)
FROM stats INNER JOIN players on players.id = stats.player_id
WHERE players.last_name = "Bonds" AND players.first_name = "Barry"
GROUP BY players.id;
-- Expected result:
-- 2935


