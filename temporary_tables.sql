
--1 Using the example from the lesson, create a temporary table called employees_with_departments that contains first_name, last_name, and dept_name for employees currently with that department.

USE germain_1481;

SELECT *
FROM departments;

DROP TABLE employees_with_departments;

CREATE TEMPORARY TABLE employees_with_departments AS
SELECT first_name, last_name, dept_name
FROM employees.employees
JOIN employees.dept_emp USING(emp_no)
JOIN employees.departments USING(dept_no)
WHERE employees.dept_emp.to_date > NOW();

-- 1a-b Add a column named full_name to this table. It should be a VARCHAR whose length is the sum of the lengths of the first name and last name columns

SELECT * 
FROM employees_with_departments;

ALTER TABLE employees_with_departments DROP COLUMN full_name;

ALTER TABLE employees_with_departments add full_name VARCHAR(200);

UPDATE employees_with_departments
SET full_name = CONCAT(first_name,' ', last_name);

-- 1c Remove the first_name and last_name columns from the table.

ALTER TABLE employees_with_departments DROP COLUMN first_name;
ALTER TABLE employees_with_departments DROP COLUMN last_name;

-- 1d What is another way you could have ended up with this same table?
-- I have no idea

-- 2 Create a temporary table based on the payment table from the sakila database.

USE sakila;

USE germain_1481;

SELECT * 
FROM payment;

CREATE TEMPORARY TABLE germain_1481.payment_from_sakila AS
SELECT *
FROM payment;

DESCRIBE payment;

SELECT *
FROM germain_1481.payment_from_sakila;

ALTER TABLE payment_from_sakila MODIFY amount decimal(7,2);

ALTER TABLE payment_from_sakila MODIFY amount INT;

UPDATE payment_from_sakila SET amount = amount * 100;

-- DROP table payment_from_sakila

-- 3 Find out how the current average pay in each department compares to the overall, historical average pay. In order to make the comparison easier, you should use the Z-score for salaries. In terms of salary, what is the best department right now to work for? The worst?

USE employees;

SELECT *
FROM salaries;

SELECT * 
FROM departments;

SELECT * 
FROM dept_emp;

SELECT avg(salary)
FROM salaries;
-- 63810.7448

SELECT avg(salary), dept_name
FROM salaries
JOIN dept_emp USING (emp_no)
JOIN departments USING(dept_no)
WHERE dept_emp.to_date > NOW()
GROUP BY dept_name
ORDER BY avg(salary);
-- Sales, Marketing, and Finance are the only 3 departments that average more than the company average.  THe other 6 departments make less.  The best department to work in is Sales and the worst is Human Resources.