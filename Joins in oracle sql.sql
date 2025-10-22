--employee
--department
alter table department
drop constraint PK_DEP_NO;


select * from employee;
select * from department;

insert into employee(E_NO, E_NAME, E_ADRESS)
values(1, 'nasir ullah', 'lower chitral');
insert into employee(E_NO, E_NAME, E_ADRESS)
values(2, 'faizan alam', 'mogh');
insert into employee(E_NO, E_NAME, E_ADRESS)
values(3, 'mutasim', 'lahore');
insert into employee(E_NO, E_NAME, E_ADRESS)
values(4, 'aftab', 'karachi');
insert into employee(E_NO, E_NAME, E_ADRESS)
values(5, 'kamal', 'islamabad');
insert into employee(E_NO, E_NAME, E_ADRESS)
values(6, 'faisal', 'peshawar');

insert into department(DEP_NO, DEP_NAME, E_NO)
values(1001, 'computer', 1);
insert into department(DEP_NO, DEP_NAME, E_NO)
values(1001, 'computer', 2);
insert into department(DEP_NO, DEP_NAME, E_NO)
values(1002, 'english', 3);
insert into department(DEP_NO, DEP_NAME, E_NO)
values(1001, 'computer', 4);
insert into department(DEP_NO, DEP_NAME, E_NO)
values(1003, 'social science', 5);
insert into department(DEP_NO, DEP_NAME, E_NO)
values(1001, 'computer', 6);

select * from department;

--JOin = cross product + some conditions

--Natural join
--Natural join compare the common attribute from both table and give rows where both the attribute matches
select e_name from employee  emp, department dep
where emp.e_no=dep.e_no;
--This is the logic behind natural join we take the product of two tables and then put some condition there.
select e_name, dep_name from employee natural join department;
--This is the actual syntex for natural join 
commit;
delete from department where e_no=6;

--Self join
--Type of join where we join the table with its self
create table study(
    s_id varchar2(10),
    c_id varchar2(10),
    since date
);
insert into study
values('s1', 'c1', date'2021-02-06');
insert into study
values('s2', 'c2', date'2024-04-02');
insert into study
values('s1', 'c1', date'2021-02-06');

delete from study where s_id='s1';
select * from study;
select t1.s_id 
from study t1, study t2 
where t1.s_id=t2.s_id and t1.c_id <> t2.c_id;
commit;
--now we will join the study table to its self to know which student is enrolled on two courses.
--we use alias to make a temparory copy of the study table
--find the student who is enrolled in at least two courses

--lets create a new table for a batter example

create table emp(
    emp_id number,
    empname varchar2(20),
    manager_id number
);
insert into emp(emp_id, empname, manager_id)
values(1, 'Agni', 3);
insert into emp(emp_id, empname, manager_id)
values(2, 'Akash', 4);
insert into emp(emp_id, empname, manager_id)
values(3, 'Dharti', 2);
insert into emp(emp_id, empname, manager_id)
values(4, 'Vayu', 3);

select * from emp;

--now using this table we have to find the employe and their manager from the same table
select t1.empname Employee_name, t2.empname Manager_name 
from emp t1, emp t2
where t2.emp_id = t1.manager_id;

select * 
from emp t1, emp t2
where t2.emp_id = t1.manager_id;


commit;

--Equi joins
--there should be equal sign among all the attributes including the common ones 
--find the emp name who worked in a department having location same as their address.
create table empl(
    e_no number,
    e_name varchar2(20),
    adress varchar2(50)
);
create table dept(
    dep_no number,
    location varchar(30),
    e_no number
);

insert into empl values(1,'Ram', 'Delhi');
insert into empl values(2,'Varun', 'Chd');
insert into empl values(3,'Ravi', 'chd');
insert into empl values(4,'Amrit', 'Delhi');

insert into dept values(101,'Delhi', 1);
insert into dept values(102,'Pune', 2);
insert into dept values(103,'Patna', 4);

select * from empl;
select * from dept;

--find the emp name who worked in a department having location same as their address.
select e_name, adress, location from empl, dept where empl.e_no=dept.e_no and  empl.adress = dept.location;
commit;

--left outer join 
--it returns the matching rows and the rows in the left table but not in the right table
















































