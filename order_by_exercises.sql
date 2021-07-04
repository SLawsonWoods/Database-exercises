USE employees;

SELECT * 
FROM employees;

-- 2 The last person in the results list is Vidya Simmen
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name ='Maya'
ORDER BY first_name;

-- 3 The first name in the rows is Irena Acton and the last name in the rows is Vidya Zweizig
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name ='Maya'
ORDER BY first_name, last_name;

-- 4 The first record is Irene Aingworth, the last record is Maya Zyda.
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Irene' OR first_name = 'Vidya' OR first_name ='Maya'
ORDER BY last_name, first_name;

-- 5 There are 899 records returned. The first employee no is 10021,Ramzi Erede, the last employee is no 499,648, Tadahiro Erede
SELECT first_name, last_name, emp_no
FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e'
ORDER BY emp_no;

-- 6 There were 899 rows returned, the newest employee is Teiji Eldridge , oldest employee Sergi Erde
SELECT first_name, last_name, emp_no, hire_date
FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e'
ORDER BY hire_date DESC;

-- 7 There are 362 records.  Thne name of the oldest employee hired last is Khun and the youngest employee hired first is Douadi
SELECT first_name, hire_date, birth_date
FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '19%%-12-25'
ORDER BY birth_date, hire_date DESC;


