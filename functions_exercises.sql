USE employees;

# TODO 2:
SELECT CONCAT(first_name, ' ', last_name) AS 'Full Names' FROM employees
WHERE last_name LIKE 'e%'
AND last_name LIKE '%e';

# TODO 3:
SELECT * FROM employees
WHERE MONTH(birth_date) = 12
AND DAY(birth_date) = 25;

# TODO 4:
SELECT * FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
AND MONTH(birth_date) = 12
AND DAY(birth_date) = 25;

# TODO 5:
SELECT * FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
AND MONTH(birth_date) = 12
AND DAY(birth_date) = 25
ORDER BY hire_date DESC, birth_date DESC;

# TODO 6:
SELECT CONCAT(first_name,' ',last_name)
AS 'Name', DATEDIFF(CURDATE(),hire_date) AS 'Days Worked' FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
AND MONTH(birth_date) = 12 AND DAY(birth_date) = 25
ORDER BY hire_date DESC, birth_date DESC;