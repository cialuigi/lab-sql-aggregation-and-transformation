-- Determine the shortest and longest movie durations and name the values as max_duration and min_duration.
SELECT 
    MAX(length) AS max_duration,
    MIN(length) AS min_duration
FROM film;

-- Express the average movie duration in hours and minutes. Don't use decimals.
SELECT 
    CONCAT(
        FLOOR(AVG(length) / 60), ' hours ', 
        LPAD(FLOOR(AVG(length) % 60), 2, '0'), ' minutes'
    ) AS average_length
FROM film;

-- Calculate the number of days that the company has been operating.
SELECT 
    DATEDIFF(MAX(return_date), MIN(rental_date)) AS days_operating
FROM rental;

-- Retrieve rental information and add two additional columns to show the month and weekday of the rental. Return 20 rows of results.
SELECT 
    *, 
    MONTH(rental_date) AS month_rent, 
    WEEKDAY(rental_date) AS weekday_rent 
FROM rental 
LIMIT 20;
