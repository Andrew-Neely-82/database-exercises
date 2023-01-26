#TODO 2: good
SELECT DISTINCT last_name FROM employees
ORDER BY last_name DESC LIMIT 10;

# TODO 3: good
SELECT emp_no FROM salaries
ORDER BY salary DESC
LIMIT 5;

# TODO 4: corrected
SELECT emp_no FROM salaries
ORDER BY salary DESC
LIMIT 4 OFFSET 46;