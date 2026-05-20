create table employee ( emp_id int primary key,
emp_name varchar(20),dept_id int,emp_salary int);
insert into employee values (1,'ram',125,13784);
insert into employee values (2,'shyam',126,18468);
insert into employee values (3,'hari',127,168368);
insert into employee values (4,'khan',128,67748);
select * from employee;
create table department (dept_id int primary key,dept_name varchar(20));
insert into department values (125,'technical support');
insert into department values (126,'cloud support');
insert into department values (127,'sre');
select * from department;
select employee.emp_name,department.dept_name,employee.emp_salary
from employee inner join department on employee.dept_id=department.dept_id;
select employee.emp_name,department.dept_name,employee.emp_id
from employee left join department on employee.dept_id=department.dept_id;
select employee.emp_name,department.dept_name
from employee right join department on employee.dept_id=department.dept_id;
select department.dept_name,
count(employee.emp_id) as total_employee
from employee
inner join department 
on employee.dept_id=department.dept_id
group by department.dept_name;
select emp_name, emp_salary from employee
order by emp_salary desc;

create table tickets (ticket_id int primary key, emp_id int,
issue varchar(200),
status varchar(20));
insert into tickets values (102,1,'laptop not working','open');
insert into tickets values (103,2,'email issue','closed');
insert into tickets values (104,3,'network issue','open');
insert into tickets values (105,4,'bug in code','closed');
select * from tickets;
select employee.emp_name, tickets.issue, tickets.status
from employee inner join department on employee.dept_id 
=department.dept_id inner join tickets on employee.emp_id 
=tickets.emp_id;