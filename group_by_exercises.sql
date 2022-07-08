USE employees;

# SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'e%'
  AND last_name LIKE '%e'
GROUP BY last_name
ORDER BY last_name
LIMIT 5;

SELECT DISTINCT last_name, first_name
FROM employees
WHERE last_name LIKE 'e%'
AND last_name LIKE '%e'
GROUP BY last_name, first_name
ORDER BY last_name;

SELECT DISTINCT COUNT(last_name),last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name;

SELECT COUNT(*),gender
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
GROUP BY gender
ORDER BY gender;


SELECT DISTINCT first_name
FROM employees;