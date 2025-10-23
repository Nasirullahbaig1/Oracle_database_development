select * from employees;

select * from employees
order by salary desc
offset 2 rows
fetch first 1 rows only;

select * from employees
order by salary desc
fetch first 1 rows only;