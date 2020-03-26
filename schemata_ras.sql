-- Drop table if exists
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	gender VARCHAR(1),
	hire_date DATE
);

-- Drop table if exists
DROP TABLE IF EXISTS department_employees;

CREATE TABLE department_employees (
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	from_date_dpt DATE,
	to_date_dpt DATE
);

-- Drop table if exists
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
	dept_no VARCHAR(5) PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

-- Drop table if exists
DROP TABLE IF EXISTS department_manager;

CREATE TABLE department_manager (
	dept_no VARCHAR(5) NOT NULL,
	emp_no INT NOT NULL,
	from_date_mgr DATE,
	to_date_mgr DATE
);

-- Drop table if exists
DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries (
	emp_no INT NOT NULL PRIMARY KEY, 
	salary INT NOT NULL,
	from_date_sal DATE,
	to_date_sal DATE
);

-- Drop table if exists
DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
	empl_no INT NOT NULL,
	title VARCHAR(30) NOT NULL,
	from_date_tit DATE,
	to_date_tit DATE
);