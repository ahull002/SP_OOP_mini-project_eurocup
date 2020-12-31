-- Write a SQL query to find the number of matches that were won by a single point, but
-- do not include matches decided by penalty shootout.

SELECT 
    goal_score, count(goal_score) AS counts
FROM
    euro_cup_2016.match_mast
WHERE
	decided_by != "P" AND goal_score = "0-1"
GROUP BY
	goal_score;