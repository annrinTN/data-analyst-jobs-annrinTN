-- #12 How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’?
-- What word do these positions have in common?
-- A: 4 bob titles with Tableau in common
SELECT DISTINCT title AS non_analyst_jobs
FROM data_analyst_jobs
--WHERE non_analyst_jobs NOT LIKE '%Analy%'
--GROUP BY title
WHERE title NOT LIKE '%naly%'
AND title NOT LIKE '%NALY%'; 