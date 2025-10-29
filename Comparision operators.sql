--comparision operators in oracle
--Equal =
--inequality or not equal !=, ^=, <>
--Greater then >
--Less than <
--Greater then or equal to >=
--Less than or equal to <=
--[NOT] BETWEEN : bwteen two values - inclusive
--[NOT] IN : Equal to any memeber of the list or query
--[NOT] EXIST : If subquery of exist return any records then true
--IS [NOT] NULL : Check if the value is null and return ture if its null

--Logical operators
--AND - Return true if both the conditions are true
--OR - Return true if either condition is true
--NOT - Return false if the following conditions is true
      --Return true if the following conditions are false
      
--Equal
select * from employees
where salary = 10000;

--Greater then
select * from employees 
where salary > 15000;

--Less then
select * from employees
where salary < 3000;

--Not equal to
select * from employees 
where salary <> 10000;

--less or equal to 
select * from employees
where salary <= 10000;

--greater or equal to
select * from employees
where salary >= 10000;

--between 
select * from employees
where salary between 10000 and 15000;

--not between 
select * from employees
where salary not between 10000 and 15000;

--null
select * from employees
where salary is null;

--not null
select * from employees 
where salary is not null;

--IN 
select * from employees 
where salary in(24000, 10000,30000, 25000);

--NOT IN
select * from employees
where salary not in (24000, 100000);

--EXISTS
select * from employees e
where exists (select * from employees ee
where e.employee_id = ee.employee_id
and ee.last_name = 'Kochhar'
);

--NOT EXISTS
select * from employees e
where not exists (select * from employees ee
where e.employee_id = ee.employee_id
and ee.last_name = 'Kochhar'
);
commit;

--Logical operators
--AND
select * from employees 
where salary >= 10000 and salary <= 20000;

--OR
select * from employees
where salary = 10000 OR salary = 17000;

--NOT
select * from employees 
where NOT(salary >= 10000 and salary <= 20000);

--GROUP BY
--we extract the data from a table on the basis of a common data.
--for example we can extract the hr as a group.





