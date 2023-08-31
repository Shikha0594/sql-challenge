-- create table departments
Create table departments(
dept_no VARCHAR(30) PRIMARY KEY,
dept_name VARCHAR(30) NOT NULL);

select * from departments

-- create table titles
CREATE TABLE titles(
title_id varchar(30) primary key,
title varchar(30) not null);

 select * from titles;
 
-- create table employees
create table employees (
emp_no integer primary key,
emp_title_id varchar(30) not null,
birth_date date,
first_name varchar(30) not null,
last_name varchar(30) not null,
sex varchar,
hire_date Date
foreign key (emp_title_id) references titles (title_id));

select * from employees;

-- create table dept_emp
create table dept_emp(
emp_no integer,
dept_no varchar(30),
Foreign key (dept_no) references departments(dept_no),
foreign key (emp_no) REFERENCES employees(emp_no));

select * from dept_emp;

-- create table dept_manger
create table dept_manager(
dept_no varchar(30),
emp_no integer,
foreign key (dept_no) references departments(dept_no),
foreign key (emp_no) references employees(emp_no)
);
select * from dept_manager;

-- create table salaries

create table salaries (
emp_no integer,
salary integer,
	foreign key (emp_no) references employees(emp_no)
);
select * from salaries;


