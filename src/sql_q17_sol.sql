-- Write a SQL query to find the country where the most assistant referees come from,
-- and the count of the assistant referees.

WITH cte AS (
SELECT 
    arm.country_id,
    sc.country_name,
    COUNT(arm.ass_ref_name) AS ass_ref_name
FROM
    euro_cup_2016.asst_referee_mast AS arm
INNER JOIN
	euro_cup_2016.soccer_country AS sc ON arm.country_id = sc.country_id
GROUP BY
	sc.country_name
ORDER BY
	ass_ref_name DESC
)

SELECT 
	country_name
FROM 	
	cte
LIMIT
	1
