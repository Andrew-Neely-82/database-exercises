USE employees;

# TODO 2:
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS dept_manager
FROM employees AS e
JOIN dept_manager AS dm
    ON e.emp_no = dm.emp_no
JOIN departments AS d
    ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

# TODO 3:
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_manager AS dm
              ON e.emp_no = dm.emp_no
         JOIN departments AS d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY d.dept_name;

# TODO 4:
SELECT t.title, COUNT(t.title) as Total
FROM employees e
         JOIN titles t ON e.emp_no = t.emp_no
         JOIN dept_emp de ON e.emp_no = de.emp_no
         JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service' AND t.to_date = '9999-01-01'
GROUP BY t.title
ORDER BY Total DESC;

# TODO 5:
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS dept_manager, s.salary
FROM departments d
         JOIN dept_manager dm ON d.dept_no = dm.dept_no
         JOIN employees e ON dm.emp_no = e.emp_no
         JOIN salaries s ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND e.emp_no IN (
    SELECT emp_no FROM titles WHERE to_date = '9999-01-01' AND title = 'Manager'
)
ORDER BY d.dept_name;

# TODO Bonus: i think this is right?
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee, d.dept_name AS Department,
       CONCAT(m.first_name, ' ', m.last_name) AS Manager
FROM employees e
         JOIN dept_emp de ON e.emp_no = de.emp_no
         JOIN departments d ON de.dept_no = d.dept_no
         JOIN dept_manager dm ON dm.dept_no = d.dept_no
         JOIN employees m ON dm.emp_no = m.emp_no
WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01'
ORDER BY d.dept_name;
