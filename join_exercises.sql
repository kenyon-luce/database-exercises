USE employees;

-- write a query that shows each department along with the name of the current manager for that department.
/*
current_dept_emp --> emp_no, dept_no, from_date, to_date
departments --> dept_no, [dept_name]
dept_emp --> emp_no, dept_no, from_date, to_date
dept_manager --> emp_no, dept_no, from_date, to_date
employees --> emp_no, birth_date, [first_name, last_name], gender
*/

SELECT *
FROM dept_manager
WHERE year (to_date)= 9999; --returns manager emp_no along with their dept_no (no names)

SELECT *
FROM departments;

-- need department name and current manager for each department. I can only get department name from departments.dept_name and employee names from employees.name, its asking for managers only so I will need to connect it to dept_manager (like the code above), then fetch their dept_id which I will have to connect back to departments to get the name...geez
SELECT departments.dept_name AS department,
       concat(first_name, ' ', last_name) AS manager,
       departments.dept_no AS dept_no
FROM employees
    JOIN dept_manager
        ON employees.emp_no = dept_manager.emp_no
    JOIN departments
        ON dept_manager.dept_no = departments.dept_no
WHERE year(to_date) = 9999
    AND gender = 'F'
ORDER BY dept_no;

--JOIN chain. connected employees to dept_manager (through emp_no) to get manager names only, then joined dept_manager to departments (through dept_no) to get department names each employee is in (which we already limited to managers), then we used WHERE to filter to current managers.

SELECT title,
       count(title)
FROM titles
GROUP BY title; --counts employees with each title, need to filter to Customer Service

SELECT titles.title,
       count(titles.title)
FROM titles
    JOIN dept_emp
        ON dept_emp.emp_no = titles.emp_no
    JOIN departments
        ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Customer Service'
    AND year(dept_emp.to_date) = 9999
    AND year(titles.to_date) = 9999
GROUP BY titles.title;
--its not filtering to current employees, even though I added it in the WHERE query
--update: fixed, what I did was correct, I just didn't take into account that titles also had a to_date that wasn't being filtered

SELECT departments.dept_name AS department,
       concat(first_name, ' ', last_name) AS manager,
       salaries.salary
FROM employees
    JOIN dept_manager
        ON employees.emp_no = dept_manager.emp_no
    JOIN departments
        ON dept_manager.dept_no = departments.dept_no
    JOIN salaries
        ON employees.emp_no = salaries.emp_no
WHERE year(salaries.to_date) = 9999
    AND year(dept_manager.to_date) = 9999
ORDER BY salaries.salary DESC;
--get each manager's salary
