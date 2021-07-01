USE employees;

SELECT *
FROM current_dept_emp;

SELECT *
FROM dept_emp;

SELECT *
FROM employees
WHERE hire_date IN (SELECT hire_date FROM employees WHERE emp_no = 101010)
AND emp_no IN(SELECT emp_no from dept_emp where to_date > CURDATE());
-- 1 Find all the current employees with the same hire date as employee 101010 using a sub-query

SELECT * 
FROM employees;

SELECT * 
FROM current_dept_emp;

SELECT emp_no, title 
FROM titles
WHERE emp_no IN (
SELECT emp_no
FROM employees
WHERE first_name = 'Aamod')
AND emp_no IN (
SELECT emp_no
FROM current_dept_emp
);
-- 2 Find all the titles ever held by all current employees with the first name Aamod

SELECT first_name
FROM employees
WHERE emp_no IN(
SELECT emp_no
FROM current_dept_emp
WHERE to_date < NOW()
);
-- 3 How many people in the employees table are no longer working for the company? 59,900

SELECT *
FROM dept_manager;

SELECT first_name, last_name, gender
FROM employees
WHERE emp_no IN (
SELECT emp_no
FROM dept_manager
WHERE to_date > NOW()
)
AND gender = 'F';
-- 4 Find all the current department managers that are female.

SELECT *
FROM salaries;

SELECT first_name, last_name
FROM employees 
WHERE emp_no IN (
		SELECT emp_no
	   FROM salaries
	     WHERE to_date > NOW()
	     AND salary > (
SELECT AVG(salary) 
FROM salaries
));
-- 5 Find all the employees who currently have a higher salary than the companies overall, historical average salary.


SELECT COUNT(*), (COUNT(*))
FROM salaries
WHERE to_date > NOW()
AND salary >= (SELECT MAX(salary)- STD(salary)FROM salaries WHERE to_date > NOW())

;

-- 6 How many current salaries are within 1 standard deviation of the current highest salary? (Hint: you can use a built in function to calculate the standard deviation.) What percentage of all salaries is this?



