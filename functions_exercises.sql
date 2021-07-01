USE employees;

SELECT * 
FROM employees;

SELECT first_name, last_name
FROM employees
WHERE first_name = 'Irene' OR first_name = 'Vidya' OR first_name ='Maya'
ORDER BY first_name;
-- 2 The last person in the results list was Vidya Zweizig

SELECT first_name, last_name
FROM employees
WHERE first_name = 'Irene' OR first_name = 'Vidya' OR first_name ='Maya'
ORDER BY first_name, last_name;
-- 3 The first name in the rows is Irene Aigsworth and the last name in the rows is Vidya Zweizig

SELECT first_name, last_name
FROM employees
WHERE first_name = 'Irene' OR first_name = 'Vidya' OR first_name ='Maya'
ORDER BY first_name, last_name;
-- 4 The first record is Irene Radhakrishnan, the last record is Vidya Simmen

SELECT first_name, last_name, emp_no
FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e';
-- 5The first employee no is 10021,Ramzi Erede, the last employee is no 499,648, Tadahiro Erede

SELECT first_name, last_name, emp_no, hire_date
FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e'
ORDER BY hire_date DESC;
-- 6There were 899 rows returned, the newest employee is Teiji Eldridge , oldest employee Sergi Erde

SELECT first_name, hire_date, birth_date
FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '19%%-12-25'
ORDER BY birth_date, hire_date DESC;
--  7There were 899 results returned, first in rows Khun and last in rows Douadi 

-- FUNCTIONS

SELECT concat(first_name," ", last_name) AS full_name
FROM employees
WHERE last_name LIKE 'e%'AND last_name LIKE '%e';
-- 2

SELECT upper(concat(first_name," ", last_name)) AS full_name
FROM employees;
-- 3

SELECT first_name, last_name, hire_date, birth_date, datediff('hire_date','curdate')
FROM employees
WHERE hire_date LIKE "19%%" AND birth_date LIKE '%-12-25';
-- 4

SELECT *
FROM salaries;

SELECT min(salary), max(salary)
FROM salaries;
-- 5

SELECT lower(concat(substr(first_name, 1, 1),substr(last_name,1, 4),"_",substr(birth_date,6,2),substr(birth_date, 2,2))), first_name, last_name, birth_date 
FROM employees;
-- 6

