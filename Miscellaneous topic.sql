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

