create database netflix_db
use netflix_db

DROP TABLE IF EXISTS netflix;

CREATE TABLE netflix
(
    show_id VARCHAR(6),
    type VARCHAR(10),
    title VARCHAR(150),
    director VARCHAR(200),
    casts VARCHAR(1000),
    country VARCHAR(150),
    date_added VARCHAR(50),
    release_year INT,
    rating VARCHAR(10),
    duration VARCHAR(15),
    listed_in VARCHAR(100),
    description VARCHAR(250)
);






LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/netflix_titles.csv'
INTO TABLE netflix
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

ALTER TABLE netflix MODIFY COLUMN director TEXT;

select count(*) from netflix
-- 1. Count the number of Movies vs TV Shows
SELECT 	type,	COUNT(*)
FROM netflix
GROUP BY 1
-- movies -> 6131
-- YV Shows -> 2676

-- 2). Top 10 countries by number of shows
select country, count(*) as total 
from netflix 
group by country 
order by total desc limit 10 

-- 3) average release year by country 
select country, avg(release_year) as average_release_year
from netflix 
group by country

 -- 4. Number of shows by rating:
 select rating, count(*) as total from netflix GROUP BY rating ORDER BY total DESC;

-- 5. number of shows by duration
select duration, count(*) as total 
from netflix 
group by duration 
order by total desc 
limit 10;

-- 6. number of shows by genre
select listed_in, count(*) as total 
from netflix 
group by listed_in 
order by total desc 
limit 10;

-- 7. number of shows per release year
select release_year, count(*) as total 
from netflix 
group by release_year 
order by release_year;

-- 8. tv shows vs movies per country
select country, 
sum(case when type = 'tv show' then 1 else 0 end) as tv_shows, 
sum(case when type = 'movie' then 1 else 0 end) as movies
from netflix
group by country;

-- 9. top 5 longest shows by duration
select title, duration 
from netflix 
order by duration desc 
limit 5;

-- 10. top 5 earliest shows by release year
select title, release_year 
from netflix 
order by release_year 
limit 5;

-- 11. number of shows with missing country
select count(*) as missing_country 
from netflix 
where country is null;

-- 12. number of shows with missing rating
select count(*) as missing_rating 
from netflix 
where rating is null;

-- 13. distinct number of genres
select count(distinct listed_in) as total_genres 
from netflix;

-- 14. distinct number of countries
select count(distinct country) as total_countries 
from netflix;

-- 15. list shows with multiple genres
select show_id, title, listed_in 
from netflix 
where listed_in like '%,%';

-- 16. number of shows by number of cast members
select 
 (length(cast) - length(replace(cast, ',', '')) + 1) as number_of_cast,
 count(*) as total
from netflix
group by number_of_cast
order by total desc
limit 5;

-- 17. shows with most extensive casts (say more than 10 people)
select show_id, title, cast 
from netflix
having (length(cast) - length(replace(cast, ',', '')) + 1) > 10;

-- 18. number of shows by first character in title
select left(title, 1) as first_letter, count(*) as total 
from netflix 
group by first_letter 
order by total desc 
limit 10;

-- 19. number of tv shows and movies per rating and country
select country, rating, type, count(*) as total
from netflix
group by country, rating, type
order by total desc
limit 10;

-- 20. average number of shows per country
select avg(total) as average_per_country 
from (select country, count(*) as total from netflix group by country) as subquery;
