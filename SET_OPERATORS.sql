--set operators
--set operators combine the result of two queries
--query with set operator is called compound query

--type of operators
--UNION
  --combine result of two queries
  --distinct records
--UNION ALL
    --combine result from both quries
    --not nessory to be distinct
--MINUS
    --
--INTERSECT

select * from employees;
info employees;

create table emp1 as select EMPLOYEE_ID, FIRST_NAME, SALARY from employees;
select * from emp1;
info emp1;

create table emp2 as select EMPLOYEE_ID, FIRST_NAME, SALARY from employees
where salary > 10000;
select * from emp2;

update emp1
set  FIRST_NAME = 'steve'
where EMPLOYEE_ID <= 120;

drop table emp2;


