USE employees;

SELECT *
FROM titles;

SELECT *
FROM dept_manager;

SELECT *
FROM departments;


SELECT salary
FROM salaries
WHERE emp_no IN (
      SELECT emp_no
         FROM dept_manager
)
JOIN departments USING(`dept_no`);


