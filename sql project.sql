USE cars;

-- Read cars data
SELECT * FROM cardekho;

-- Total number of cars
SELECT COUNT(*) FROM cardekho;

-- Manager asked employee how many cars will be available in 2023
SELECT COUNT(*) FROM cardekho WHERE year = 2023;

-- Manager asked employee how many cars are available in 2020, 2021, and 2023
SELECT COUNT(*) FROM cardekho WHERE year = 2020;  -- 74
SELECT COUNT(*) FROM cardekho WHERE year = 2021;  -- 7
SELECT COUNT(*) FROM cardekho WHERE year = 2023;  -- 6

-- Group by year
SELECT COUNT(*) FROM cardekho WHERE year IN (2020, 2021, 2023) GROUP BY year;

-- Client asked to print the total count of all cars by year
SELECT year, COUNT(*) FROM cardekho GROUP BY year;

-- Client asked car dealer agent how many diesel cars will be there in 2020
SELECT COUNT(*) FROM cardekho WHERE fuel = 'Diesel' AND year = 2020;  -- 20

-- Client requested a car dealer agent how many petrol cars will be there in 2020
SELECT COUNT(*) FROM cardekho WHERE year = 2020 AND fuel = 'petrol';  -- 51

-- The manager told the employee to give print all the fuel cars (petrol, diesel, and cng) by year
SELECT year, COUNT(*) FROM cardekho WHERE fuel = 'petrol' GROUP BY year;
SELECT year, COUNT(*) FROM cardekho WHERE fuel = 'Diesel' GROUP BY year;
SELECT year, COUNT(*) FROM cardekho WHERE fuel = 'cng' GROUP BY year;

-- Manager said there were more than 100 cars in a given year
-- Which year had more than 100 cars
SELECT year, COUNT(*) FROM cardekho GROUP BY year HAVING COUNT(*) > 100;

-- The manager said to employee all the cars count details between 2015 and 2023, we need a complete list
SELECT COUNT(*) FROM cardekho WHERE year BETWEEN 2015 AND 2023;

-- The manager said employee all cars detail between 2015 to 2023 we need complete list
SELECT * FROM cardekho WHERE year BETWEEN 2015 AND 2023;

