USE employees;


SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS  Department_Manager, de.emp_no
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS  Department_Manager, dm.emp_no
FROM employees as e
         JOIN dept_manager as dm
              ON e.emp_no = dm.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
  AND e.gender = 'f';


SELECT title, COUNT(title) AS Total
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN titles as t
              ON t.emp_no = de.emp_no
         JOIN departments as d
              ON de.dept_no = d.dept_no
WHERE t.to_date = '9999-01-01'
AND d.dept_name = 'Customer Service'
GROUP BY title
ORDER BY Total
;


#
# SELECT d.dept_name AS Department_Name , CONCAT(e.first_name, ' ', e.last_name) AS  Department_Manager, s.salary
# FROM employees as e
#          JOIN dept_manager as dm
#               ON dm.emp_no = e.emp_no
#          JOIN departments as d
#               ON d.dept_no = dm.dept_no
#          JOIN salaries as s
#               ON s.emp_no = e.emp_no
# WHERE s.to_date = '9999-01-01'
#
# ;


SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS  Department_Manager, s.salary
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
         JOIN salaries as s
              ON s.emp_no = e.emp_no
WHERE s.to_date = '9999-01-01'
AND de.to_date = '9999-01-01'
ORDER BY dept_name;

# SELECT CONCAT(e.first_name, ' ', e.last_name) AS  Employee, d.dept_name AS Department, CONCAT(e.first_name, ' ', e.last_name) AS Manager
# From employees as e
#         JOIN dept_manager as dm
#         ON dm.emp_no = e.emp_no
#         JOIN departments as d
#         ON d.dept_no = dm.dept_no
#         JOIN titles as t
#         ON t.emp_no = e.emp_no
# #       JOIN dept_emp as de
# #       ON de.dept_no = d.dept_name
# WHERE t.to_date = '9999-01-01'
# ORDER BY d.dept_name;
#


# SELECT CONCAT(e.first_name, ' ', e.last_name) AS  Employee, d.dept_name AS Department, CONCAT(e.first_name, ' ', e.last_name) AS Manager
# FROM employees as e
#          JOIN dept_emp as de
#               ON de.emp_no = e.emp_no
#          JOIN titles as t
#               ON t.emp_no = de.emp_no
#          JOIN departments as d
#               ON de.dept_no = d.dept_no
#          JOIN dept_manager as dm
#               ON dm.emp_no = e.emp_no
# WHERE t.to_date = '9999-01-01';


SELECT CONCAT(e.first_name, ' ', e.last_name), d.dept_name, CONCAT(e2.first_name,' ', e2.last_name)
FROM employees as e
         JOIN dept_emp as de ON e.emp_no = de.emp_no
         JOIN departments as d ON de.dept_no = d.dept_no
         JOIN dept_manager as dm ON dm.dept_no = d.dept_no
         JOIN employees AS e2 ON dm.emp_no = e2.emp_no
         WHERE  year(de.to_date) = 9999 AND YEAR(dm.to_date) = 9999
         ORDER BY d.dept_name, de.emp_no
;