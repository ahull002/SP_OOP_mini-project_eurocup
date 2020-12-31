-- Write a SQL query to find referees and the number of matches they worked in each
-- venue.

SELECT 
    rm.referee_name, 
    mm.venue_id, 
    COUNT(DISTINCT mm.venue_id) AS times_played
FROM
    euro_cup_2016.player_booked AS pb
INNER JOIN
    euro_cup_2016.match_details AS md ON pb.match_no = md.match_no
INNER JOIN
	euro_cup_2016.match_mast AS mm ON mm.match_no = md.match_no
INNER JOIN
	euro_cup_2016.referee_mast AS rm ON mm.referee_id = rm.referee_id
GROUP BY
	mm.venue_id, rm.referee_name
ORDER BY
	rm.referee_name;