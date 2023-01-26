USE employees;

# TODO 2: no issues
SELECT first_name, last_name FROM employees
WHERE first_name
IN ('Irena','Vidya','Maya')
ORDER BY first_name ASC;

# TODO 3: No issues
SELECT first_name, last_name FROM employees
WHERE gender = 'm'
  AND (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
ORDER BY first_name ASC, last_name ASC;

# TODO 4: No issues
SELECT first_name, last_name FROM employees
WHERE gender = 'm'
  AND (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
ORDER BY last_name ASC, first_name ASC;

# TODO 5: no issues
SELECT emp_no, last_name FROM employees
WHERE last_name LIKE 'e%'
   OR last_name LIKE '%e'
ORDER BY emp_no ASC;

# TODO 6: complete
SELECT emp_no, last_name FROM employees
WHERE last_name LIKE 'e%'
   OR last_name LIKE '%e'
ORDER BY emp_no DESC;

# SELECT * FROM employees
# WHERE last_name LIKE 'e%e';
#
# SELECT * FROM employees
# WHERE last_name LIKE '%q%'
#   AND last_name NOT LIKE '%qu%';