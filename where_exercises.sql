USE employees;

# Find all employees with first names 'Irena', 'Vidya', or 'Maya'
# — 709 rows (Hint: Use IN).

SELECT * FROM employees
WHERE gender = 'm'
AND (first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya');

SELECT * FROM employees
WHERE last_name LIKE 'e%'
OR last_name LIKE '%e';

SELECT * FROM employees
WHERE last_name LIKE 'e%e';

SELECT * FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';
