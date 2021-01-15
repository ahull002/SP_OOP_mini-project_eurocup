-- Write a SQL query to find the date EURO Cup 2016 started on.

WITH 
	min_date AS (

SELECT 
    DISTINCT mm.play_date
FROM
    euro_cup_2016.match_mast AS mm
ORDER BY
	mm.play_date ASC LIMIT 1	
)

SELECT
	*
FROM 
	min_date;