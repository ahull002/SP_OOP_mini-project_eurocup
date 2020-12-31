-- Write a SQL query that returns the total number of goals scored by each position on
-- each country’s team. Do not include positions which scored no goals.

SELECT 
    sc.country_name, pm.posi_to_play, COUNT(gd.goal_type) AS points
FROM
    euro_cup_2016.player_mast AS pm
INNER JOIN
    euro_cup_2016.soccer_team AS st ON pm.team_id = st.team_id
INNER JOIN
	euro_cup_2016.goal_details AS gd ON pm.player_id = gd.player_id
INNER JOIN
	euro_cup_2016.soccer_country AS sc ON st.team_id = sc.country_id
GROUP BY
	sc.country_name, pm.posi_to_play
ORDER BY
	sc.country_name;