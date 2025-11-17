--COMMON TABLE EXPRESSION IN ORACLE SQL
--Generaly reffered to CTE.
--CTE make complex qureries eaiser to write and understand by creating temporary result sets.
--We can use it multiple time in the same query.
--It help to organize and simplify your code.
--sytax: cte_name [(column_name),[col_name]....)] as (subquery)

--WITH cte_name AS (
--    -- Your CTE query goes here
--    SELECT column1, column2, ...
--    FROM table_name
--    WHERE condition
--)
--SELECT * 
--FROM cte_name;

--KEY TERMS:
--WITH CLAUSE:- This keywords makes the start of the CTE. It also enables us to define
--one or more CTEs that we can refer to within the main query.

--cte_name:- This is the name given to the CTE. we can refer to this name in the main query as if 
--it were a table.

--AS:- This keyword is used to define the query that produces the result set for the CTE.

--CTE Query: The query inside the CTE may be a normal SQL query. It can select data from tables, 
--perform joins, apply filters, etc.

--Main Query: You can refer to it in the main query after defining the CTE. This main query can 
--select data from the result set produced by CTE, or this result can also be joined to other tables, 
--or can be used in any other SQL operation.

--Benefits of Using CTEs:
--Readability Improved
--Reusability
--Modularity
--Recursive Query Support

select * from employees;

with recursive EmployeHirarcy as(
    select employee_id, (first_name ||' ' || last_name) as Full_name, manager_id
    from employees
    where manager_id is null
    union all
    select employee_id, (first_name ||' ' || last_name) as Full_name, manager_id
    from employees e
    inner join EmployeHirarcy eh 
    on e.manager_id = eh.manager_id
)
select employee_id, Full_name, manager_id
from EmployeHirarcy;









