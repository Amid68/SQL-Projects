SELECT *
FROM startups;

SELECT COUNT(*)
FROM startups;

SELECT SUM(valuation)
FROM startups
WHERE stage = "Seed";

SELECT MIN(founded)
FROM startups;

SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY 1
ORDER BY 2 DESC;

SELECT category, COUNT(*)
FROM startups
GROUP BY 1
HAVING COUNT(*) > 3
ORDER BY 2 DESC;

SELECT category, COUNT(*)
FROM startups
GROUP BY 1
HAVING COUNT(*) > 3
ORDER BY 2 DESC;

SELECT location, ROUND(AVG(employees), 0)
FROM startups
GROUP BY 1
HAVING AVG(employees) > 500
ORDER BY 2 DESC;
