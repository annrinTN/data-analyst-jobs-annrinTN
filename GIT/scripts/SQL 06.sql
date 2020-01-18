SELECT COUNT (*)
FROM data_analyst_jobs;
--ALTER TABLE data_analyst_jobs
--ADD COLUMN id SERIAL PRIMARY KEY
--#1 How many rows are in the data_analyst_jobs table?
-- A: 1793
SELECT COUNT (*)
FROM data_analyst_jobs;
-- #2 Write a query to look at just the first 10 rows. 
-- What company is associated with the job posting on the 10th row?
-- A: ExxonMobile
SELECT *
FROM data_analyst_jobs
LIMIT 10;
--#3 How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?
SELECT DISTINCT COUNT (location) , location
FROM data_analyst_jobs
WHERE location IN ('TN', 'KY')
GROUP BY location
;
--#4 How many postings in Tennessee have a star rating above 4?
SELECT DISTINCT COUNT (location) , location, sum (star_rating )
FROM data_analyst_jobs
WHERE location IN ('TN')
AND (star_rating > 4)
GROUP BY location, star_rating;

--#5 How many postings in the dataset have a review count between 500 and 1000?
SELECT COUNT (*) 
FROM data_analyst_jobs
WHERE review_count >= 500 AND review_count <= 1000
;
*/
--#6 Show the average star rating for each state. 
--The output should show the state as state and the average rating for the state as avg_rating.
--Which state shows the highest average rating?
SELECT  location AS state, AVG (star_rating) AS avg_rate
FROM data_analyst_jobs
GROUP BY state 
ORDER BY avg_rate DESC
;
