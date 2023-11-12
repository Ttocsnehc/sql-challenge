drop table department
drop table employees
drop table dept_emp
drop table dept_manager
drop table salaries
drop table titles


CREATE TABLE department (
    dept_no varchar(30) NOT null PRIMARY KEY,
    dept_name varchar(30) NOT null);
	
CREATE TABLE titles (
    title_id varchar(30) NOT NULL PRIMARY KEY,
    title varchar(30) NOT NULL);

CREATE TABLE employees (
    emp_no int NOT NULL PRIMARY KEY,
    emp_title varchar(30) NOT NULL,
    birth_date date NOT NULL,
    first_name varchar(30) NOT NULL,
    last_name varchar(30) NOT NULL,
    sex varchar(5) NOT NULL,
    hire_date date NOT NULL,
	FOREIGN KEY (emp_title) REFERENCES titles(title_id));

CREATE TABLE dept_emp (
    emp_no int NOT NULL,
    dept_no varchar(30) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (dept_no) REFERENCES department(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

CREATE TABLE dept_manager (
    dept_no varchar(30) NOT NULL,
    emp_no int NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (dept_no) REFERENCES department(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

CREATE TABLE salaries (
    emp_no int NOT NULL,
    salary int NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

select * from department
select * from titles
select * from employees
select * from dept_emp
select * from dept_manager
select * from salaries






















