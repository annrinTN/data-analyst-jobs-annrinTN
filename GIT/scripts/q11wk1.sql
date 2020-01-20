-- #11 Find all the job titles that contain the word ‘Analyst’. 
-- How many different job titles are there?
-- A: 771 titles including all UPPER ANALYST, 754 with case match only
SELECT DISTINCT title AS analyst_jobs
FROM data_analyst_jobs
GROUP BY title
HAVING TITLE LIKE '%Analyst%' OR title LIKE '%ANALYST%';