
SELECT *
FROM users;

SELECT * 
FROM roles;

SELECT *
FROM users
JOIN roles on roles.id = users.`role_id`;
-- Includes all records with a user and role

SELECT *
FROM users
LEFT JOIN roles on roles.id = users.role_id;
-- Includes all records with users even those without a role

SELECT *
FROM users
RIGHT JOIN roles on roles.id = users.role_id;
-- Includes all records with roles even those with no users in that role

SELECT *, COUNT(*), roles.id
FROM users
RIGHT JOIN roles on roles.id = users.role_id;
-- GROUP BY roles.id, 
-- Display a list of roles and the number of users that have each role
-- ERRORS

-- EMPLOYEES DATABASE QUESTIONS

USE employees;
-- 1

SELECT *
FROM employees;

SELECT *
FROM departments;

SELECT *
FROM dept_manager;

SELECT *
FROM dept_emp;

SELECT *
FROM salaries;

SELECT *
FROM titles;

SELECT *
FROM current_dept_emp;



SELECT CONCAT(first_name, ' ',last_name) AS full_name, titles.title
FROM employees
JOIN dept_manager 
ON dept_manager.emp_no = employees.emp_no
JOIN departments 
ON departments.dept_no = dept_manager.dept_no
JOIN titles
ON titles.emp_no = dept_manager.emp_no;
-- 2 Show each department with the name of the current manager

SELECT CONCAT(first_name, ' ',last_name) AS full_name, titles.title
FROM employees
JOIN dept_manager 
ON dept_manager.emp_no = employees.emp_no
JOIN departments 
ON departments.dept_no = dept_manager.dept_no
JOIN titles
ON titles.emp_no = dept_manager.emp_no
WHERE gender = 'F';
-- 3 Name of department managers who are women

SELECT titles.title, COUNT(titles.emp_no)
FROM employees
JOIN titles
ON titles.emp_no = employees.emp_no
JOIN dept_emp 
ON dept_emp.emp_no = titles.emp_no
JOIN departments
ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Customer Service' AND dept_emp.to_date > NOW() AND titles.to_date > NOW()
GROUP BY titles.title;
-- 4 Find the current titles of employees currently working in the Customer Service department.

SELECT salaries.salary, employees.first_name, employees.last_name
FROM dept_manager
JOIN salaries using (emp_no)
JOIN employees using (emp_no)
WHERE dept_manager.to_date > NOW() AND salaries.to_date > NOW();
-- 5 Find the current salary of all current managers
-- Need to add departments so join that 

SELECT departments.dept_name, COUNT(*)
FROM employees
JOIN dept_emp using(emp_no)
JOIN departments using(dept_no)
WHERE 
GROUP BY departments.dept_name;
-- 6 List number of employees in each department

SELECT dept_name, AVG(salaries.salary)
FROM current_dept_emp
JOIN salaries using(emp_no)
JOIN departments using(dept_no)
WHERE salaries.to_date > NOW() AND current_dept_emp.to_date > NOW()
GROUP BY dept_name
ORDER BY AVG(salaries.salary) DESC
LIMIT 1;
-- 7 Which department has the highest average salary? 

SELECT dept_name, max(salaries.salary)
FROM departments
JOIN dept_emp using(dept_no)
JOIN employees using(emp_no)
JOIN salaries using(emp_no)
WHERE departments.dept_name = 'Marketing';
-- 8 Who is the highest paid employee in the Marketing department?

SELECT first_name, last_name, max(salaries.salary)
FROM employees
JOIN salaries using(emp_no)
JOIN dept_manager using(emp_no)
JOIN departments using(dept_no);
-- 9 Which current department manager has the highest salary
