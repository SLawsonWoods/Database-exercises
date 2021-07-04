USE employees;

DESCRIBE employees;

SELECT *
FROM employees;

-- 2 There were 709 records returned
SELECT COUNT(*)
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya');

-- 3 Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya', as in Q2, but use OR instead of IN. Enter a comment with the number of records returned = 709. Does it match number of rows from Q2? Yes.
SELECT first_name
FROM employees
WHERE first_name = 'Irena'
		OR first_name = 'Vidya'
		OR first_name = 'Maya';
	 

-- 4 There are 441 records returned.
SELECT first_name, gender
FROM employees
WHERE (first_name = 'Irena'
		OR first_name = 'Vidya'
		OR first_name = 'Maya') 
	   AND gender = 'M';

-- 5 This query returns 7,330 records
SELECT last_name
FROM employees
WHERE last_name LiKE 'e%'  ;

-- 6a THere are 30,723 employees whose last name starts with or ends e.
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%' OR last_name LIKE '%e';

-- 6b There are 23,393 employees whose last name end with e but do not start with e.
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%e' AND NOT last_name LIKE 'e%';

-- 7aThere are 899 empoyees whose last name starts with and ends with e.
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%e' AND last_name LIKE 'e%';

-- 7b There are 24,292 employees whose names end with e.
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%e';

-- 8 There are 135,214 records returned
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '199%';

-- 9 There were 842 records returned
SELECT first_name, last_name
FROM employees
WHERE birth_date LIKE '%-12-25';

-- 10 There wer 362 records returned
SELECT first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '19%%-12-25';

-- 11 There were 1,873 records returned
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';

-- 12 There were 1,873 records returned
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE 'qu';
