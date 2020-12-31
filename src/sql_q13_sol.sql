-- Write a SQL query to find all the defenders who scored a goal for their teams.

SELECT 
    pm.player_name, sc.country_name, pm.playing_club, pm.posi_to_play, COUNT(gd.goal_type) AS points
FROM
    euro_cup_2016.player_mast AS pm
INNER JOIN
    euro_cup_2016.soccer_team AS st ON pm.team_id = st.team_id
INNER JOIN
	euro_cup_2016.goal_details AS gd ON pm.player_id = gd.player_id
INNER JOIN
	euro_cup_2016.soccer_country AS sc ON st.team_id = sc.country_id
WHERE
	pm.posi_to_play = "DF"
GROUP BY
	sc.country_name, pm.posi_to_play
ORDER BY
	sc.country_name, pm.playing_club;