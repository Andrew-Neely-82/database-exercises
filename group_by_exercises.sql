USE employees;

# TODO 2:
SELECT DISTINCT title
FROM titles;

# TODO 3:
SELECT DISTINCT last_name AS 'Last Name' FROM employees
WHERE last_name LIKE 'E%E'
ORDER BY last_name;

# TODO 4:
SELECT DISTINCT CONCAT(first_name, ' ', last_name) AS 'Name'
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY first_name, last_name;


# TODO 5:
SELECT DISTINCT last_name AS 'Last Name'
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;


# TODO 6:
SELECT CONCAT(COUNT(*), ' ', last_name) AS 'Count and Last Name'
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name, COUNT(*) DESC;

# TODO 7:
SELECT COUNT(*), gender FROM employees
WHERE (first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya')
GROUP BY gender;