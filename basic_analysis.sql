USE NetflixDB;
GO

SELECT title, release_year
FROM dbo.netflix_titles
WHERE TRY_CAST(release_year AS INT) < 2024;

SELECT title, release_year
FROM dbo.netflix_titles
ORDER BY TRY_CAST(release_year AS INT) DESC;

SELECT rating, COUNT(*) AS total
FROM dbo.netflix_titles
GROUP BY rating
ORDER BY total DESC;

SELECT country, COUNT(*) AS total
FROM dbo.netflix_titles
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total DESC;
