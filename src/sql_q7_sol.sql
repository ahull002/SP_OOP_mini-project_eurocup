-- Write a SQL query to find all the venues where matches with penalty shootouts were
-- played.

SELECT 
    venue_id, count(venue_id) AS counts
FROM
    euro_cup_2016.match_mast
WHERE
	decided_by = "P"
GROUP BY
	venue_id;