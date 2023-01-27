USE employees;

# TODO 1:
SELECT first_name AS 'First Name', last_name AS 'Last Name', hire_date AS 'Hire Date' FROM employees
WHERE hire_date IN (SELECT hire_date FROM employees WHERE emp_no = 101010);

# TODO 2:
SELECT title AS 'Title', emp_no AS 'Employee #' FROM titles
WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');

# TODO 3:
SELECT first_name, last_name
FROM employees e
WHERE e.gender = 'F' AND e.emp_no in (SELECT emp_no FROM dept_manager WHERE to_date = '9999-01-01');

# TODO Bonus 1:
SELECT DISTINCT d.dept_name FROM employees e
JOIN dept_manager dm ON e.emp_no = dm.emp_no
JOIN departments d ON dm.dept_no = d.dept_no
WHERE e.gender = 'F' AND dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

# TODO Bonus 2:
SELECT first_name, last_name
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no
ORDER BY salaries.salary DESC LIMIT 1;

