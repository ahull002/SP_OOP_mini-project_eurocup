-- Write a SQL query to find the substitute players who came into the field in the first
-- half of play, within a normal play schedule.

WITH 
	firsthalf_subs AS (
SELECT 
	* 
FROM 
	euro_cup_2016.player_in_out AS pio
WHERE
	pio.play_half = "1" AND pio.in_out = "I" AND pio.play_schedule = "NT")
    
Select 
	*
FROM
	firsthalf_subs AS fhs
INNER JOIN
	euro_cup_2016.player_mast AS pm ON fhs.player_id = pm.player_id
    
    
