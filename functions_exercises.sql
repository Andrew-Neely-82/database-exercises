SELECT emp_no, last_name FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT CONCAT(first_name,' ',last_name) as full_name FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT * FROM employees
WHERE birth_date = '1965-12-25';

SELECT * FROM employees
WHERE birth_date = '1965-12-25'
AND hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT * FROM employees
WHERE birth_date = '1965-12-25'
AND hire_date BETWEEN '1990-01-01' AND '1999-12-31'
ORDER BY hire_date DESC, birth_date ASC;

SELECT emp_no, CONCAT(first_name,' ',last_name) as full_name, DATEDIFF(NOW(),hire_date) as days_worked FROM employees
WHERE birth_date = '1965-12-25'
AND hire_date BETWEEN '1990-01-01' AND '1999-12-31'
ORDER BY hire_date DESC, birth_date ASC;