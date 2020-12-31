-- Write a SQL query to find the number of captains who were also goalkeepers.

WITH 
	goalies AS (
SELECT 
    pm.jersey_no, pm.player_name, pm.posi_to_play, pm.player_id, sc.country_name
FROM
    euro_cup_2016.player_mast AS pm
INNER JOIN
    euro_cup_2016.soccer_team AS st ON pm.team_id = st.team_id
INNER JOIN
	euro_cup_2016.soccer_country AS sc ON st.team_id = sc.country_id
WHERE
	pm.posi_to_play = "GK") 
    
SELECT 
	DISTINCT goalies.player_name,
    goalies.player_id
FROM 
	euro_cup_2016.match_captain AS mc
INNER JOIN
	goalies ON player_id = mc.player_captain
    