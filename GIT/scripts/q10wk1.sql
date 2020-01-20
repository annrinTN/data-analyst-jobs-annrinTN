-- #10 Add the code to order the query in #9 from highest to lowest
-- Which company with more than 5000 reviews across all locations in the dataset has the 
-- highest star rating? What is that rating?
-- A: American Express with 4.199999809
SELECT DISTINCT company, CAST(AVG(star_rating) AS FLOAT) AS avg_rate, review_count
FROM data_analyst_jobs
GROUP BY company, review_count
HAVING review_count >5000
ORDER BY avg_rate DESC;