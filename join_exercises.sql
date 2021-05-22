USE employees;

SELECT * FROM dept_manager WHERE year(to_date)= 9999;

SELECT concat(first_name, ' ', last_name) AS manager, employees.dept_no FROM employees JOIN dept_manager ON employees.emp_no = dept_manager.emp_no WHERE year(to_date)= 9999;