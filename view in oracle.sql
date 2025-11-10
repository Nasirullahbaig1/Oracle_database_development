--VIEW IN ORACLE
--view is the logical table which represents another table or view.
--view does not store any sort of data. its a virtual table or named query.

--view provides security of the and it is also used for simplicity.
--updatable and non-updatable views.

--However if we have used an aggregate function, join, union(or any set operator), 
--distinct or group by then such a view cannot be updated.

--create view syntax
--CREATE [OR REPLACE] VIEW <view name> as 
--      <SELECT query>
--      [WITH CHECK OPTION]
--if the a view exist already with the same name it will not give us error insted it will replace it.

select * from employees;

create or replace view low_salary_emp_view as 
select * from employees
where salary < 10000;

select * from low_salary_emp_view;

--below we will add some of the columns for security reasons.
create or replace view low_salary_emp_view2 as 
select FIRST_NAME, LAST_NAME, SALARY, DEPARTMENT_ID from employees
where salary < 10000;

select * from low_salary_emp_view2;

--blow we have concatinate the first name and last name and showed them in one column.
create or replace view low_salary_emp_view3 as 
select FIRST_NAME || ' ' || LAST_NAME as FULL_NAME, SALARY, DEPARTMENT_ID from employees
where salary < 10000;
select * from low_salary_emp_view3;

--we have replaced the null value in department id with zero.
create or replace view low_salary_emp_view3 as 
select FIRST_NAME || ' ' || LAST_NAME as FULL_NAME, SALARY, coalesce(DEPARTMENT_ID, 0) as DEPARTMENT_ID from employees
where salary < 10000;
select * from low_salary_emp_view3;





















