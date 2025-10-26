select * from employees;

select * from employees
order by salary desc
offset 2 rows
fetch first 1 rows only;
/
select * from employees
order by salary desc
offset 2 rows
fetch first 2 rows with ties;
/
select * from employees
order by salary desc
fetch first 1 rows only;
/
select * from employees
order by salary desc;
/
--Equi join is a type of inner join the only difference is here 
--we can only use equal sign
select emp.employee_id, emp.first_name, emp.last_name, jb.job_title 
from employees emp join jobs jb
on emp.job_id=jb.job_id
where jb.job_title = 'Stock Manager';
/
--Natural join is also a type or sub part of inner join
select emp.employee_id, emp.first_name, emp.last_name, jb.job_title
from employees emp natural join jobs jb;
/
--A LEFT OUTER JOIN is conceptually identical to a LEFT JOIN.
--Showing all rows from the left table and matching rows from the right table
select emp.employee_id, emp.first_name, emp.last_name, jb.job_title
from employees emp left outer join jobs jb
on emp.job_id=jb.job_id;
/
--the RIGHT JOIN (also called RIGHT OUTER JOIN)
--It returns all records from the right table and only the matching records from the left table.
select emp.employee_id, emp.first_name, emp.last_name, jb.job_title
from employees emp right outer join jobs jb
on emp.job_id=jb.job_id;
/
select *
from employees emp left outer join jobs jb
on emp.job_id=jb.job_id;
/
select *
from employees emp right outer join jobs jb
on emp.job_id=jb.job_id;
/
--The FULL JOIN (or FULL OUTER JOIN) in SQL returns all rows from both tables
--
select emp.employee_id, emp.first_name, emp.last_name, jb.job_title
from employees emp full join jobs jb
on emp.job_id=jb.job_id;
/
/
/
--the task below was to create a new table using ctas command from employee table
--pick 5 columns where the department id is not null then create the table
--next is update the the new table salary applying the condtion 
--set the salary of employee to 20000 whoes salary is less then 10000.
select * from employees;
select * from employees where department_id is not NULL;
/
create table new_employee_nasir as select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, HIRE_DATE, SALARY, DEPARTMENT_ID 
from employees
where DEPARTMENT_ID is not NULL;
select * from new_employee_nasir;
/
update new_employee_nasir
set salary = 20000
where salary < 10000;
commit;
/
select * from new_employee_nasir
where salary = 20000;
/
/
/
select * from employees;
--create two new tables to perform join practice and see the difference
create table personal(
    P_id number constraint PK_ID primary key,
    name varchar2(20),
    address varchar(40),
    contact number    
);
create table profrssional(
    p_work varchar2(20),
    dept varchar2(20),
    p_id number,
    constraint FK_ID_P foreign key (p_id) references personal(P_id)
);

insert into personal
values(10, 'ankit', 'kapali', 0343222222);
insert into personal
values(20, 'ankush', 'kapali', 0442222222);
insert into personal
values(30, 'akash', 'mango', 9993222222);
insert into personal
values(40, 'altaf', 'sakchi', 2244222222);

select * from personal;

alter table profrssional
drop constraint FK_ID_P;

alter table personal
drop constraint PK_ID;

insert into profrssional
values('teacher', 'BBA', 20);
insert into profrssional
values('doctor', 'MBBS', 40);
insert into profrssional
values('teacher', 'MBA', 50);
insert into profrssional
values('programmer', 'java', 60);
insert into profrssional
values('cashier', 'ACCA', 10);

select * from profrssional;

--Equi join 
select p.name, p.address, s.p_work 
from personal p, profrssional s
where p.P_id=s.p_id;

--non equi join
select p.name, p.address, s.P_work
from personal p, profrssional s
where p.p_id > s.p_id;

--natural join
select p.name, p.address, s.P_work
from personal p natural join profrssional s;

--inner join
select p.name, p.address, s.P_work
from personal p inner join profrssional s
on p.p_id = s.p_id;

--cross join
select p.name, p.address, s.P_work
from personal p cross join profrssional s;

--left outer join
select p.name, p.address, s.P_work
from personal p left outer join profrssional s
on p.p_id = s.p_id;

--right outer join
select p.name, p.address, s.P_work
from personal p right outer join profrssional s
on p.p_id = s.p_id;

--full outer join
select p.name, p.address, s.P_work
from personal p full outer join profrssional s
on p.p_id = s.p_id;
/
--self join
select p1.name, p1.address, p1.contact
from personal p1, personal p2
where p1.address = p2.address and p1.P_id != p2.P_id;
/
select * from personal;
commit;
/
/
--some more practice on joins with where and on clause
select * from employees;
select * from departments;
/
--lets apply left join with some conditions
select emp.first_name, emp.job_id, emp.salary, dpt.department_name
from employees emp left join departments dpt
on emp.department_id = dpt.department_id
where emp.salary > 10000;

select emp.first_name, emp.job_id, emp.salary, dpt.department_name
from employees emp left join departments dpt
on emp.department_id = dpt.department_id and emp.salary > 10000;
/
--now lets apply right join with the above condition
select emp.first_name, emp.job_id, emp.salary, dpt.department_name
from employees emp right join departments dpt
on emp.department_id = dpt.department_id
where emp.salary > 10000;
/
select emp.first_name, emp.job_id, emp.salary, dpt.department_name
from employees emp right join departments dpt
on emp.department_id = dpt.department_id and emp.salary > 10000;
/
commit;
/
--ordering of data
select EMPLOYEE_ID, FIRST_NAME, SALARY, MANAGER_ID from employees
order by salary desc
offset 1 rows
fetch next 2 rows with ties; 
/
/
--crate a new employee table and and merge the data into that
create table M_employee as select EMPLOYEE_ID, FIRST_NAME, LAST_NAME,EMAIL
from employees where 1=3;
/
select * from M_employee;
drop table M_employee;
/
merge into M_employee t
using employees s
on(t.EMPLOYEE_ID = s.EMPLOYEE_ID)
when matched then
update set  t.FIRST_NAME=s.FIRST_NAME, 
            t.LAST_NAME=s.LAST_NAME, 
            t.EMAIL=s.EMAIL
when not matched then
insert (t.EMPLOYEE_ID, t.FIRST_NAME, t.LAST_NAME, t.EMAIL)
values (s.EMPLOYEE_ID, s.FIRST_NAME, s.LAST_NAME, s.EMAIL);
/
select * from M_employee;
/
/
--create a table using joints from two existing table using ctas
select * from employees;
select * from departments;
/
create table emp_dpt as select emp.EMPLOYEE_ID, emp.FIRST_NAME, emp.EMAIL, dpt.DEPARTMENT_NAME
from employees emp inner join departments dpt
on(emp.DEPARTMENT_ID = dpt.DEPARTMENT_ID);
/
select * from emp_dpt;
commit;

--SQL Order of Execution
--Understanding How Queries Run
--When writing SQL queries, we usually follow a certain order.
--However, the SQL engines follow a specific order of execution when compiling queries, 
--which is different from the typical order of writing.
--FROM/JOIN: Specifies the tables from which to retrieve data.
--WHERE: Filters the rows that meet the condition before grouping.
--GROUP BY: Groups rows that share a property.
--HAVING: Filters groups based on conditions, applied after grouping.
--SELECT: Specifies the columns to retrieve or calculate.
--DISTINCT: Removes duplicate rows from the result set.
--ORDER BY: Sorts the result set by specified columns.
--LIMIT: Specifies the maximum number of rows to return.
--OFFSET: Specifies how many rows to skip before starting to return rows.


































