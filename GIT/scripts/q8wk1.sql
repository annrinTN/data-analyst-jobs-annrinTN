-- #8 How many unique job titles are there for California companies?
-- A: 230
SELECT COUNT(DISTINCT title), location AS state
FROM data_analyst_jobs
WHERE location = 'CA'
GROUP BY location
;