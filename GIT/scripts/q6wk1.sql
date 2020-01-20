--#6 Show the average star rating for each state. 
--The output should show the state as state and the average rating for the state as avg_rating.
--Which state shows the highest average rating?
-- A: NE 4.199999809
SELECT  location AS state, CAST(AVG(star_rating) AS FLOAT) AS avg_rating
FROM data_analyst_jobs
GROUP BY state 
ORDER BY avg_rating DESC NULLS LAST
;