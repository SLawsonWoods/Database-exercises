USE employees;

SELECT *
FROM departments;

SELECT *
FROM employees;

SELECT *
FROM dept_emp;

-- 1 Write a query that returns all employees (emp_no), their department number, their start date, their end date, and a new column 'is_current_employee' that is a 1 if the employee is still with the company and 0 if not.

SELECT emp_no, dept_no, from_date, to_date,
IF (to_date > NOW(), True, False) AS 'is_current_employee'
FROM dept_emp;

-- 2 Write a query that returns all employee names (previous and current), and a new column 'alpha_group' that returns 'A-H', 'I-Q', or 'R-Z' depending on the first letter of their last name.

SELECT last_name,
CASE WHEN last_name RLIKE '^(A|B|C|D|E|F|G|H)' THEN 'A-H' 
WHEN last_name RLIKE '^(I|J|K|L|M|N|O|P|Q)' THEN 'I-Q' 
WHEN last_name RLIKE '^(R|S|T|U|V|W|X|Y|Z)' THEN 'R-Z' END AS 'alpha_group' 
FROM employees;

-- 3 How many employees (current or previous) were born in each decade?

SELECT COUNT(*),
CASE 
WHEN birth_date LIKE '195%' THEN '1950s' 
WHEN birth_date LIKE '196%' THEN '1960s' END AS 'Decade'
FROM employees
GROUP BY Decade;


