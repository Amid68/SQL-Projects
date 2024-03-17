SELECT title, score
FROM hacker_news
ORDER BY score DESC
LIMIT 5;

SELECT SUM(score)
FROM hacker_news;

SELECT user, SUM(score)
FROM hacker_news
GROUP BY 1
HAVING SUM(score) > 200
ORDER BY 2 DESC;

SELECT (517 + 309 + 304 + 282) / 6366.0;

SELECT user, COUNT(*)
FROM hacker_news
WHERE url like '%watch?v=dQw4w9WgXcQ%'
GROUP BY 1
ORDER BY 2 DESC;

SELECT CASE
    	WHEN url LIKE '%github.com%' THEN 'Github'
    	WHEN url LIKE '%medium.com%' THEN 'Medium'
    	WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
    	ELSE 'Other website'
	END AS 'Source',
	COUNT(*)
FROM hacker_news
GROUP BY 1;

SELECT timestamp,
  strftime('%H', timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 20;

SELECT strftime('%H', timestamp) AS 'Hour',
  ROUND(AVG(score), 0) AS 'Average Score',
  COUNT(*) AS 'Number of Stories'
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC;

