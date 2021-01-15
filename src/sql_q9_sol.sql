-- Write a SQL query to find the goalkeeper’s name and jersey number, playing for
-- Germany, who played in Germany’s group stage matches.

WITH 
	germany_gk AS (
SELECT 
    pm.jersey_no, pm.player_name, pm.posi_to_play, pm.player_id, sc.country_name
FROM
    euro_cup_2016.player_mast AS pm
INNER JOIN
    euro_cup_2016.soccer_team AS st ON pm.team_id = st.team_id
INNER JOIN
	euro_cup_2016.soccer_country AS sc ON st.team_id = sc.country_id
WHERE
	pm.posi_to_play = "GK" AND sc.country_name = "Germany") 

SELECT 
    DISTINCT germany_gk.player_name, germany_gk.jersey_no
FROM
    euro_cup_2016.match_details AS md
INNER JOIN
	germany_gk ON md.player_gk = germany_gk.player_id
WHERE
	play_stage = "G"