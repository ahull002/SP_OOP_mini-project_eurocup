-- Write a SQL query to find the number of matches that were won by penalty shootout.
SELECT 
    decided_by, COUNT(match_no) AS counts
FROM
    euro_cup_2016.match_mast
WHERE
	decided_by = "P"
GROUP BY
	decided_by;
