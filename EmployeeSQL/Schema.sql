create table departments (
    dept_no varchar(10) primary key,
    dept_name varchar(100));
    
select * from departments;


create table titles (
    title_id varchar(10) primary key,
    title_name varchar(100));

select * from titles;


create table employees (
    emp_no int primary key,
    emp_title_id varchar(10),
    birth_date date,
    first_name varchar(50),
    last_name varchar(50),
    sex varchar(1),
    hire_date date,
    foreign key (emp_title_id) references titles(title_id));

select * from employees
limit 10;

create table salary (
    emp_no int,
    salary int,
    foreign key (emp_no) references employees(emp_no),
    primary key (emp_no, salary));
    
select * from salary;
drop table salary;


create table salary (
    emp_no int,
    salary int,
    foreign key (emp_no) references employees(emp_no),
    constraint salary_no primary key (emp_no, salary));

select * from salary;


create table dept_manager (
    dept_no varchar(10),
    emp_no int,
    foreign key (dept_no) references departments(dept_no),
    foreign key (emp_no) references employees(emp_no),
    constraint dept_manager_ck primary key (dept_no,emp_no));

select * from dept_manager;

create table dept_emp (
    emp_no int,
    dept_no varchar(10),
    foreign key (emp_no) references employees(emp_no),
    foreign key (dept_no) references departments(dept_no),
    constraint dept_emp_ck primary key (emp_no,dept_no));
    
select * from dept_emp
limit(10);

select * from departments limit (10);
select * from dept_emp limit (10);
select * from dept_manager limit (10);
select * from employees limit (10);
select * from salary limit (10);
select * from titles limit (10);