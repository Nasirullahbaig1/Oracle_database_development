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

select employee_id, first_name, last_name, job_title 
from employees emp join jobs jb
on emp.job_id=jb.job_id
where jb.job_title = 'Stock Manager';












