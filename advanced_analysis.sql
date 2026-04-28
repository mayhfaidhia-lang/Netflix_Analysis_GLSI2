USE NetflixDB;
GO

-- Top producing countries

SELECT TOP 10 country, COUNT(*) AS total
FROM dbo.netflix_titles
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total DESC;

-- Most common genres

SELECT TOP 10 listed_in, COUNT(*) AS total
FROM netflix_titles
GROUP BY listed_in
ORDER BY total DESC;

-- Evolution by year

SELECT
    TRY_CAST(release_year AS INT) AS year,
    COUNT(*) AS total
FROM netflix_titles
WHERE TRY_CAST(release_year AS INT) IS NOT NULL
GROUP BY TRY_CAST(release_year AS INT)
ORDER BY year;

-- Movies vs TV Shows

SELECT type, COUNT(*) AS total
FROM netflix_titles
GROUP BY type;