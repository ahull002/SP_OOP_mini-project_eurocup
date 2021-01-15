-- Write a SQL query to find all the venues where matches with penalty shootouts were
-- played.

SELECT 
    mm.match_no, sv.venue_name
FROM
    euro_cup_2016.match_mast AS mm
LEFT JOIN
	euro_cup_2016.soccer_venue AS sv ON mm.venue_id = sv.venue_id
WHERE
	decided_by IN ('P')