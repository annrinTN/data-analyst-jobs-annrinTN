--#4 How many postings in Tennessee have a star rating above 4?
-- A: 3
SELECT DISTINCT COUNT (location) , location, sum (star_rating )
FROM data_analyst_jobs
WHERE location IN ('TN')
AND (star_rating > 4)
GROUP BY location, star_rating;
-- for just the count
SELECT location, COUNT (star_rating ) AS top_star_rating
FROM data_analyst_jobs
WHERE location IN ('TN')
AND (star_rating > 4)
GROUP BY location;