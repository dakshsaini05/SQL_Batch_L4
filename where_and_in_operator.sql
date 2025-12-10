show databases;

use world;

show tables;

select * from city;

select name, population from city;

-- using the where clause we will filter the data
select * from city where district='Zuid-Holland';

select * from city where countrycode='ARG';

-- 6 or more than 6 lakh
select * from city where population>600000;

-- not equals to [<> / !=]
select * from city where countrycode <> 'ARG';

use world;

select * from country;

-- in operator = filter the data in the specific set of values
select * from country where continent in('north america','europe');

select * from country where continent in('north america', 'europe','asia');

select name, continent, indepyear from country WHERE indepyear in(1901, 1960);











