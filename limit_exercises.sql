#TODO 2: good
SELECT DISTINCT last_name FROM employees
ORDER BY last_name DESC LIMIT 10;

# TODO 3: good
SELECT emp_no FROM salaries
ORDER BY salary DESC
LIMIT 5;

# TODO 4: curriculum might be wrong?
SELECT emp_no FROM salaries
ORDER BY salary DESC
LIMIT 5 OFFSET 45;