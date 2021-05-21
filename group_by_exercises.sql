SELECT DISTINCT title FROM titles;

SELECT first_name, last_name FROM employees WHERE last_name LIKE '%E' AND last_name LIKE 'E%' GROUP BY first_name, last_name ORDER BY last_name;

SELECT count(last_name) AS occurrences, last_name FROM employees WHERE last_name LIKE '%Q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name;

SELECT count(gender), gender FROM employees WHERE first_name IN ('irena', 'vidya', 'maya') GROUP BY gender;