USE employees;

-- 2
SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

-- 3 Cappello, Mandell, Schreiter, Kushner, Stroustrup
SELECT last_name
FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '19%%-12-25'
ORDER BY hire_date
LIMIT 5;

-- 4 The relationship between offset and limit is that offset determines where to begin the count for the limit
SELECT last_name
FROM employees
WHERE hire_date LIKE '19%%' AND birth_date LIKE '19%%-12-25'
ORDER BY hire_date
LIMIT 5 OFFSET 45;

