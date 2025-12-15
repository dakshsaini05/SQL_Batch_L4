-- aggregate function (to perform the calculation on set of row)

-- 1. count
use world;
SELECT * FROM country;

select count(indepyear) from country;
select count(*), count(indepyear) from country;

SELECT DISTINCT(continent) FROM country;

SELECT DISTINCT continent, region FROM country;

SELECT COUNT(population), SUM(population), AVG(population) FROM country;

SELECT COUNT(DISTINCT governmentform) FROM country;

SELECT COUNT(DISTINCT governmentform) FROM country WHERE continent='Asia';

SELECT * FROM country;
SELECT SUM(population) FROM country where continent='Africa';

SELECT COUNT(name), SUM(population), COUNT(DISTINCT indepyear) FROM country WHERE continent='Africa';

-- Q1. Get the total countries the avg surface area and the total population for the countries which has got there independence from the year 1947 to 1998 but these two should not be included
SELECT COUNT(name) , AVG(surfacearea), sum(population) FROM country WHERE indepyear > 1947 and indepyear < 1998;

-- Q2. Get the total number of countries and the number of unique continents along with the avg population and the total numbers of capitals for the countries starting with 'A' or 'D'
SELECT COUNT(name), COUNT(DISTINCT continent), AVG(population), SUM(capital) FROM country WHERE name LIKE 'A%' OR name LIKE 'D%';

-- GROUP BY
SELECT continent FROM country GROUP BY continent;

SELECT continent, COUNT(*) FROM country GROUP BY continent;

SELECT governmentform, COUNT(*) FROM country GROUP BY governmentform;	

-- Q3. From the city table you have to find the total cities, total districts, unique districts, total population from the city table

SELECT * FROM city;
SELECT COUNT(name), COUNT(district),COUNT(DISTINCT district), SUM(population) FROM city;

