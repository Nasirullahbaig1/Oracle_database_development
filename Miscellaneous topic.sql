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

select * from departments;
select * from employees order by salary desc;

select * from departments d join employees e on d.department_id = e.department_id
where d.department_id in
(select department_id from employees
group by department_id
having count(case when salary >= 10000 then 1 end)>1);









