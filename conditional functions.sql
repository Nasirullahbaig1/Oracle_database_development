--CONDITIONAL FUNCTIONS
select * from employees;

--DECODE:- it accepts one expression if the value matches with the first search parameters then returns the first result.
--if it matches with the second search parameter then returns the second result and so on.
select employee_id, first_name,
decode(department_id, 80, 'Belong to HR dep', 50, 'Belong to IT dep', 'unknown') as discription from employees;
--The above querry performs two functions 
--it searches dep_id column for the given if in dep_id and give the related result
--then it will move to the second sreach and compare it in the column and then give that result also.
--NOTE: usually null != to another null but in the case of decode null = null.
--because decode function uses is null clause while comparing two nulls. 

--CASE EXPRESSION:- It is same as decode but with more flexible syntax.
select employee_id, first_name,
case department_id 
when 80 then 'Belong to HR dep'
when 50 then 'Belong to IT dep'
else 'unknown'
end as discription
from employees;
--the key difference between these two functions if the flexlibility here we have more options to add conditons.





