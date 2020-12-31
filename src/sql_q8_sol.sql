-- Write a SQL query to find the match number for the game with the highest number of
-- penalty shots, and which countries played that match.

-- Common Table Expresion to filter out joins: venue_location
WITH 
	venue_location AS (
SELECT 
    matcher.match_no,
    matcher.venue_id,
    venue.venue_name,
    venue.city_id,
    city.city,
    country.country_name
FROM
    euro_cup_2016.match_mast AS matcher
		LEFT JOIN
    euro_cup_2016.soccer_venue AS venue ON matcher.venue_id = venue.venue_id
        LEFT JOIN
    euro_cup_2016.soccer_city AS city ON venue.city_id = city.city_id
        LEFT JOIN
    euro_cup_2016.soccer_country AS country ON city.country_id = country.country_id)

SELECT 
    md.match_no, md.penalty_score, venue_location.country_name
FROM
    euro_cup_2016.match_details AS md
 		LEFT JOIN
    venue_location ON md.match_no = venue_location.match_no 
WHERE
	penalty_score IN (SELECT max(penalty_score) FROM euro_cup_2016.match_details)

