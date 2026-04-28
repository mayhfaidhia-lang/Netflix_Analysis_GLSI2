CREATE DATABASE NetflixDB;
GO

USE NetflixDB;
GO



SELECT TOP 10 *
FROM dbo.netflix_titles;

SELECT COUNT(*) AS total_titles
FROM dbo.netflix_titles;

SELECT type, COUNT(*) AS total
FROM dbo.netflix_titles
GROUP BY type;

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'netflix_titles';



























DROP TABLE IF EXISTS netflix_titles;
GO

CREATE TABLE netflix_titles (
    show_id NVARCHAR(MAX),
    type NVARCHAR(MAX),
    title NVARCHAR(MAX),
    director NVARCHAR(MAX),
    cast_info NVARCHAR(MAX),
    country NVARCHAR(MAX),
    date_added NVARCHAR(MAX),
    release_year NVARCHAR(MAX),
    rating NVARCHAR(MAX),
    duration NVARCHAR(MAX),
    listed_in NVARCHAR(MAX),
    description NVARCHAR(MAX)
);
GO

BULK INSERT netflix_titles
FROM '/var/opt/mssql/data/netflix_titles.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0d0a',
    TABLOCK,
    MAXERRORS = 1000
);
GO

SELECT COUNT(*) AS total_rows
FROM netflix_titles;

SELECT TOP 10 *
FROM netflix_titles;

