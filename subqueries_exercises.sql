USE employees;

SELECT * FROM employees WHERE hire_date IN(SELECT hire_date FROM employees WHERE emp_no = 101010);

SELECT titles.title, count(title) AS Aamod FROM titles JOIN employees ON employees.emp_no = titles.emp_no WHERE titles.emp_no IN(SELECT emp_no FROM employees WHERE first_name = 'Aamod') GROUP BY titles.title;

SELECT first_name, last_name FROM employees WHERE emp_no IN(SELECT emp_no FROM dept_manager WHERE year(to_date) = 9999 AND gender = 'F');

--BONUS
SELECT dept_name FROM departments WHERE dept_no IN(SELECT dept_no FROM dept_manager WHERE year(to_date) = 9999 AND emp_no IN(SELECT emp_no FROM employees WHERE gender = 'F'));
--^used nested sub query to get department names with female managers

SELECT first_name, last_name FROM employees WHERE emp_no IN(SELECT emp_no FROM salaries WHERE salary IN(SELECT max(salary) FROM salaries));
--used nested sub query and max() function to get highest paid employee

SELECT first_name, last_name FROM employees JOIN salaries ON(employees.emp_no = salaries.emp_no) ORDER BY salaries.salary DESC LIMIT 1;
--same code as above using JOIN



