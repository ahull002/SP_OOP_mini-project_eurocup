-- Write a SQL query to find all available information about the players under contract to
-- Liverpool F.C. playing for England in EURO Cup 2016.

SELECT 
    *
FROM
    euro_cup_2016.player_mast AS pm
INNER JOIN
    euro_cup_2016.soccer_team AS st ON pm.team_id = st.team_id
INNER JOIN
	euro_cup_2016.soccer_country AS sc ON st.team_id = sc.country_id
WHERE
	pm.playing_club LIKE "Liverpool" AND sc.country_name = "England"