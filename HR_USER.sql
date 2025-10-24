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










