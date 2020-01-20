--#5 How many postings in the dataset have a review count between 500 and 1000?
-- A" 151
SELECT COUNT (*) 
FROM data_analyst_jobs
WHERE review_count >= 500 AND review_count <= 1000
;