-- 1 How much do the current managers of each department get paid, relative to the average salary for the department? Is there any department where the department manager gets paid less than the average salary? ANSWER All department managers make more than the average department salary. No none get paid less than average department salary.

USE employees;

-- This gives you average salary by department
SELECT avg(salary), dept_name
FROM salaries
JOIN dept_manager USING(emp_no)
JOIN departments USING(dept_no)
GROUP BY dept_name;

SELECT avg(salary), dept_name
FROM salaries
WHERE emp_no IN 
JOIN dept_manager USING(emp_no)
JOIN departments USING(dept_no)
GROUP BY dept_name;

USE employees;

CREATE TEMPORARY TABLE germain_1481.dep_manager_salaries AS
SELECT first_name, last_name, salary, dept_name 
FROM employees
JOIN dept_manager USING(emp_no)
JOIN salaries USING(emp_no)
JOIN departments USING(dept_no)
WHERE salaries.to_date > NOW();

USE germain_1481;

SELECT *
FROM dep_manager_salaries
ORDER BY salary;

USE employees;

Create temporary table germain_1481.average_dept_salary AS
SELECT AVG(salary), dept_name
FROM salaries
JOIN dept_manager USING(emp_no)
JOIN departments USING(dept_no)
GROUP BY dept_name;

SELECT * 
FROM average_dept_salary;

SELECT *
FROM dep_manager_salaries
JOIN average_dept_salary USING(dept_name)
ORDER BY salary;

-- 2 What languages are spoken in Santa Monica?
USE world;

SELECT *
FROM city
ORDER BY name;

SELECT *
FROM countrylanguage;

SELECT * 
FROM country;

SELECT language, percentage
FROM city
JOIN countrylanguage USING(countryCode)
WHERE name = 'Santa Monica';

-- 3 How many different countries are in each region?

SELECT count(code),region
FROM country
GROUP BY region;

-- 4 What is the population for each region?

SELECT region, population
FROM country
GROUP BY region, population;

-- 5 What is the population for each continent?

SELECT continent, population
FROM country
ORDER BY continent ASC;

-- 6 What is the average life expectancy for each region, each continent? Sort the results from shortest to longest

SELECT continent, lifeexpectancy
FROM country
ORDER BY lifeexpectancy;

SELECT lifeexpectancy, region
FROM country
ORDER BY lifeexpectancy;

-- BONUS A Find all the countries whose local name is different from the official name

SELECT name, localname
FROM country
WHERE name != localname;

-- BONUS B How many countries have a life expectancy less than 70? 110

SELECT lifeexpectancy,name
FROM country
WHERE lifeexpectancy < 70
GROUP BY name, lifeexpectancy;

-- BONUS C What state is city x located in?

SELECT *
FROM city;












