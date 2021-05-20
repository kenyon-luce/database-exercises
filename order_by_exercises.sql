USE employees;

SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M' ORDER BY last_name, first_name;

SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E' ORDER BY emp_no;

SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' ORDER BY emp_no DESC;

SELECT * FROM employees WHERE last_name LIKE '%Q%' AND last_name NOT LIKE '%qu%';