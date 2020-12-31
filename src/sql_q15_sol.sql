-- Write a SQL query to find the referees who booked the most number of players.

SELECT 
    rm.referee_name, COUNT(pb.booking_time) AS bookings
FROM
    euro_cup_2016.player_booked AS pb
INNER JOIN
    euro_cup_2016.match_details AS md ON pb.match_no = md.match_no
INNER JOIN
	euro_cup_2016.match_mast AS mm ON mm.match_no = md.match_no
INNER JOIN
	euro_cup_2016.referee_mast AS rm ON mm.referee_id = rm.referee_id
GROUP BY
	rm.referee_name
ORDER BY
	bookings DESC
LIMIT
	5;