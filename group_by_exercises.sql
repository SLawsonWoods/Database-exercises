USE employees;

SELECT DISTINCT title
FROM titles;
-- 2

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e'
GROUP BY last_name;
-- 3

SELECT last_name, first_name
FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e'
GROUP BY last_name, first_name;
-- 4

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;
-- 5 Chelq, Lindqvist, Qiwen

SELECT last_name, COUNT(*)
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;
-- 6 Chleq = 189, Lindqvist = 190, Qiwen = 168

SELECT first_name, gender, COUNT(*)
FROM employees
WHERE first_name IN ('Irena', 'Vidya','Maya')
GROUP BY first_name, gender;
-- 7 


SELECT lower(concat(substr(first_name, 1, 1),substr(last_name,1, 4),"_",substr(birth_date,6,2),substr(birth_date, 2,2))) AS username, first_name, last_name, birth_date, COUNT(*) 
FROM employees
GROUP BY username, first_name, last_name, birth_date;
-- 8 I thought group by didn't allow for duplicates



