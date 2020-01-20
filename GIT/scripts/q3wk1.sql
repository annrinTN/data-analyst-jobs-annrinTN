--#3 How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?
--A: 21 in TN and 27 in TN KY combined
SELECT DISTINCT COUNT (location) , location
FROM data_analyst_jobs
WHERE location IN ('TN', 'KY')
GROUP BY location
;
-- total count in both KY and TN
SELECT COUNT (location) 
FROM data_analyst_jobs
WHERE location IN ('TN', 'KY')
;