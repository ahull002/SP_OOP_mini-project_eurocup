-- Write a SQL query to find the number of bookings that happened in stoppage time.

SELECT 
	play_schedule, COUNT(player_id) AS counts
FROM 
	euro_cup_2016.player_booked
WHERE
	play_schedule = "ST";
