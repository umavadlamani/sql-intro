-- Who hit the most home runs in 2019, and what team did they play for?
SELECT teams.name, players.first_name, players.last_name, stats.home_runs, teams.year
FROM stats 
INNER JOIN teams ON stats.team_id = teams.id
INNER JOIN players ON stats.player_id = players.id
WHERE teams.year = 2019
GROUP BY players.id
ORDER BY stats.home_runs DESC
LIMIT 1
-- why did the limit 1 change everything??

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+


