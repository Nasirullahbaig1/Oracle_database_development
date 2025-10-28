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
where salary != 10000;

