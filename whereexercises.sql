USE employees;

DESCRIBE employees;

SELECT *
FROM employees;

SELECT first_name
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
-- 2There were 709 records returned

SELECT first_name
FROM employees
WHERE first_name = 'Irena'
		OR first_name = 'Vidya'
		OR first_name = 'Maya';
	 
-- There were 709 records returned

SELECT first_name
FROM employees
WHERE first_name = 'Irena'
		OR first_name = 'Vidya'
		OR first_name = 'Maya';
-- 4There are too many records returning that don't include the above names


SELECT last_name
FROM employees
WHERE last_name LiKE 'e%'  ;
-- 5This query returns 7,330 records


SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%' OR last_name LIKE '%e';
-- 6aTHere are 30,723 employees whose last name starts with or ends e.

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%e' AND NOT last_name LIKE 'e%';
-- 6bThere are 23,393 employees whose last name end with e but do not start with e.

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%e' AND last_name LIKE 'e%';
-- 7aThere are 899 empoyees whose last name starts with and ends with e.

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%e';
-- 7bThere are 24,292 employees whose names end with e.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '199%';
-- 8There are 135,214 records returned

SELECT first_name, last_name
FROM employees
WHERE birth_date LIKE '19%%-12-25';
-- 9There were 842 records returned

SELECT first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date LIKE '19%%' and birth_date LIKE '19%%-12-25';
-- 10There wer 842 records returned

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';
-- 11There were 1,873 records returned

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE 'qu';
-- 12There were 1,873 records returned
