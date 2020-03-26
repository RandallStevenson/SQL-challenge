-- for each employe get employee number, last name, first name, gender and salary
-- must join salary to employee file based on employee number
SELECT ee.emp_no,ee.last_name,ee.first_name,ee.gender,sal.salary
FROM employees AS ee
JOIN salaries AS sal ON
sal.emp_no=ee.emp_no;


-- select employees hired in 1986
SELECT emp_no, first_name, last_name, hire_date
FROM employees 
WHERE hire_date BETWEEN DATE('1986-01-01') AND DATE('1986-12-31');

-- list the manager of each department (assuming all managers of the department) 
-- with department number, department name, managers employee number, last name
-- first name, hire date, and end employment date

-- join departments to managers on department number and employee to managers on employee number
-- included management start date between date of hire and end of employment (could be different)
-- the addition of the to-date from the department file shows some of these are no longer managers
-- but still employed. The number of missing end dates raises questions about the database.
SELECT d.dept_no,d.dept_name,man.emp_no,ee.last_name,ee.first_name,ee.hire_date,
man.from_date_mgr,man.to_date_mgr,de.to_date_dpt
FROM department_manager man
JOIN departments d ON
d.dept_no=man.dept_no
JOIN employees ee ON
ee.emp_no=man.emp_no
JOIN department_employees de ON
de.emp_no=man.emp_no;

-- list the department of each employee with employee number, last name, first name, and department name
SELECT ee.emp_no,ee.last_name,ee.first_name,d.dept_name
FROM department_employees de
JOIN employees ee ON
ee.emp_no=de.emp_no
JOIN departments d ON
d.dept_no=de.dept_no;

-- list all employees with first name Hercules and last name starting with 'B'
SELECT *
FROM employees
WHERE first_name='Hercules' AND last_name LIKE 'B%';

-- sales department employee listing
SELECT ee.emp_no,ee.last_name,ee.first_name,d.dept_name
FROM department_employees de
JOIN employees ee ON
ee.emp_no=de.emp_no
JOIN departments d ON
d.dept_no=de.dept_no
WHERE d.dept_name='Sales';

-- sales and development department employee listing
SELECT ee.emp_no,ee.last_name,ee.first_name,d.dept_name
FROM department_employees de
JOIN employees ee ON
ee.emp_no=de.emp_no
JOIN departments d ON
d.dept_no=de.dept_no
WHERE d.dept_name='Sales' OR d.dept_name='Development';

-- count of employees by last name in descending order
-- surname counts also indicate a questionable database, most are in the 160-226 range with 
-- only 1 name being unique
SELECT last_name,COUNT(*) AS surname_count
FROM employees
GROUP BY last_name 
ORDER BY surname_count DESC;

