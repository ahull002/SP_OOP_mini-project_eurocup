-- Write a SQL query to find the players, their jersey number, and playing club who
-- were the goalkeepers for England in EURO Cup 2016.

SELECT 
    pm.player_name, pm.jersey_no, pm.posi_to_play, pm.playing_club
FROM
    euro_cup_2016.player_mast AS pm
INNER JOIN
    euro_cup_2016.soccer_team AS st ON pm.team_id = st.team_id
INNER JOIN
	euro_cup_2016.soccer_country AS sc ON st.team_id = sc.country_id
WHERE
	pm.posi_to_play = "GK" AND sc.country_name = "England"