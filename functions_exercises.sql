USE employees;

SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') ORDER BY last_name, first_name;

SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E' ORDER BY emp_no;

SELECT * FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25;

SELECT * FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25 AND (year(hire_date) BETWEEN 1990 AND 2000) ORDER BY birth_date ASC, hire_date DESC;

SELECT *, datediff(curdate(), hire_date) AS days_worked FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25 AND (year(hire_date) BETWEEN 1990 AND 2000) ORDER BY days_worked;


-- SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' ORDER BY emp_no DESC;

-- SELECT * FROM employees WHERE last_name LIKE '%Q%' AND last_name NOT LIKE '%qu%';