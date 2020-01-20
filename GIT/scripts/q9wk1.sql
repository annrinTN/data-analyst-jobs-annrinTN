-- #9 Find the name of each company and its average star rating for all companies that have 
-- more than 5000 reviews across all locations. 
-- How many companies are there with more that 5000 reviews across all locations?
-- A: 46
SELECT DISTINCT company, ROUND(AVG(star_rating), 2) AS avg_rate, review_count
FROM data_analyst_jobs
GROUP BY company, review_count
HAVING review_count >5000;
/*--Just the count rename table practice - not complete
SELECT DISTINCT company, ROUND(AVG(star_rating), 2) AS avg_rate, review_count
FROM data_analyst_jobs AS c1
GROUP BY company, review_count
HAVING review_count >5000
   (SELECT COUNT( DISTINCT company)AS big_companies
    FROM company_ratings AS c2)
	WHERE c1.company = c2.company
;
*/
