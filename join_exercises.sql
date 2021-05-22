USE employees;

SELECT * FROM dept_manager WHERE year(to_date)= 9999;

SELECT concat(first_name, ' ', last_name) AS manager FROM employees JOIN dept_manager ON employees.emp_no = dept_manager.emp_no WHERE year(to_date)= 9999;
--^gets current manager (without specifying department names)

-- need department name and current manager for each department. I can only get department name from departments.dept_name and employee names from employees.name, its asking for managers only so I will need to connect it to dept_manager (like the code above), then fetch their dept_id which I will have to connect back to departments to get the name...geez
SELECT concat(first_name, ' ', last_name) AS manager,  FROM employees JOIN dept_manager ON employees.emp_no = dept_manager.emp_no;

