create schema cars;
use cars;

-- Total Cars; (record)--
select COUNT(*) from car_dekho;
-- Cars available in 2020, 2021, 2022,2023(individual)--
SELECT COUNT(*) FROM car_dekho Where year= 2023; #6
SELECT COUNT(*) FROM car_dekho WHERE year= 2022; #7
SELECT COUNT(*) FROM car_dekho WHERE year= 2021; #7
SELECT COUNT(*) FROM car_dekho WHERE year= 2020; #74
-- GROUP BY--
SELECT COUNT(*) FROM car_dekho where year in (2020, 2021, 2022, 2023) GROUP BY year;
-- TOTAL cars by year without detail --
SELECT  year, COUNT(*) FROM car_dekho GROUP BY year;
-- Diesel cars in 2020 --
SELECT COUNT(*) From car_dekho WHERE year= 2020 and fuel = 'diesel'; #20
-- Petrol cars in 2020 --
SELECT COUNT(*) FROM car_dekho WHERE year= 2020 and fuel = 'petrol'; #51
-- Fuel by year -- 
SELECT year, COUNT(*) from car_dekho WHERE fuel= 'petrol' GROUP BY year;
SELECT year, COUNT(*) FROM car_dekho WHere fuel= 'diesel' GROUP BY year;
select year, count(*) from car_dekho where fuel= 'cng' group by year;
-- year with more than 100 cars --
select year, count(*) from car_dekho group  by year having count(*)>100;
-- year with less than 100 cars --
select year, count(*) from car_dekho group by year having count(*)<100;
-- car between 2015/2023 --
select count(*) from car_dekho where year between 2015 and 2023; #4124
-- all detail -- 
Select * from car_dekho where year between 2015 and 2023;








