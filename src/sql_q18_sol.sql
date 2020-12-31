-- Write a SQL query to find the highest number of foul cards given in one match.

WITH max_foul AS (

SELECT 
    pb.match_no,
    COUNT(pb.sent_off = "Y") AS foul_cards
FROM
    euro_cup_2016.player_booked AS pb
WHERE
	pb.sent_off = "Y"
GROUP BY
	pb.match_no)
    
SELECT 
	MAX(foul_cards) AS max_foul_cards
FROM 
	max_foul;
