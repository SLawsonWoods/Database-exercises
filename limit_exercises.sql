SELECT DISTINCT title FROM titles;

USE employees;

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;
-- 2

SELECT last_name
FROM employees
WHERE hire_date LIKE '19%%' AND birth_date LIKE '19%%-12-25'
ORDER BY hire_date
LIMIT 5;
-- 3 Dechter, Camrinopoulos, Radhakrishnan, Biros, Kemmerer

SELECT last_name
FROM employees
WHERE hire_date LIKE '19%%' AND birth_date LIKE '19%%-12-25'
ORDER BY hire_date
LIMIT 5 OFFSET 45;
-- The relationship between offset and limit is that offset determines where to begin the count for the limited

