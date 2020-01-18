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
-- #7 Select unique job titles from the data_analyst_jobs table. How many are there?
-- A: 881
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs;
-- #8 How many unique job titles are there for California companies?
-- A: 230
SELECT COUNT(DISTINCT title), location AS state
FROM data_analyst_jobs
WHERE location = 'CA';
-- #9 Find the name of each company and its average star rating for all companies that have 
-- more than 5000 reviews across all locations. 
-- How many companies are there with more that 5000 reviews across all locations?
-- A: 46
SELECT DISTINCT company, ROUND(AVG(star_rating), 2) AS avg_rate, review_count
FROM data_analyst_jobs
GROUP BY company, review_count
HAVING review_count >5000; average star rating.
-- #10 Add the code to order the query in #9 from highest to lowest
-- Which company with more than 5000 reviews across all locations in the dataset has the 
-- highest star rating? What is that rating?
-- A: American Express with 4.199999809
SELECT DISTINCT company, CAST(AVG(star_rating) AS FLOAT) AS avg_rate, review_count
FROM data_analyst_jobs
GROUP BY company, review_count
HAVING review_count >5000
ORDER BY avg_rate DESC;
-- #11 Find all the job titles that contain the word ‘Analyst’. 
-- How many different job titles are there?
-- A: 754 titles
SELECT DISTINCT title AS analyst_jobs
FROM data_analyst_jobs
GROUP BY title
HAVING TITLE LIKE '%Analyst%';
-- #12 How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’?
-- What word do these positions have in common?
SELECT DISTINCT title AS non_analyst_jobs
FROM data_analyst_jobs
GROUP BY title
IF title NOT LIKE '%Anal%' OR title NOT LIKE '%Analytics%' 
OR title NOT LIKE '%Analyst' OR title NOT LIKE '%Analytics' or title NOT LIKE 'Analyst%'
OR title NOT LIKE 'Analytics%'
;





