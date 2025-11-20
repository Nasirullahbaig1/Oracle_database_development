--DISTINCT
--used in select clause
--it filters out the duplicate rows based on columns/columns 
--mentioned in the SELECT clause and provide a single copy of the result.

select * from employees;
select manager_id from employees where manager_id is not null order by manager_id;
select distinct manager_id from employees where manager_id is not null order by manager_id;

--we simply use the distinct function to retrive uniue values from the data.
--when we apply the distinct function in a select function it will apply on all the selected columns.

--DEFALUT IN CONVERSION FUNTION
--When data type conversion funtions are used with wrong input and conversion fails then
--a default value will be assigned to it.
--can be used with to_ and CAST funtions.

--Lets have an example 
--when in a date column we add a date 30 febrary which means it dosent exist in reality
--in this situation our converion function also fails to interpret this 
--here we use default conversion functions to tackle the problem.

select to_date('30-03-2002','dd-mm-yyyy') from dual;
select to_date('30-13-2002','dd-mm-yyyy') from dual; --invalid month error
select to_date('32-10-2002','dd-mm-yyyy') from dual; --month error
--these are the types of error we would face
select to_date('31-11-2025' default '12-1-2002' on conversion error, 'dd-mm-yyyy') from dual;
select to_number('$234' default -1 on conversion error) from dual;

--LIKE CONDITION
--like condition is used for pattern matching.
--It matches the portion of one string into another and evaluates to true or false
--based on the on the pattern matching
--syntax:
--SELECT
--FROM
--WHERE COLUMN/EXPRESSSION [NOT] LIKE [ESCAPE CHARACTER]
--PATTERN:-
--UNDERSCORE(_):-   matches exactly one character.
--percentage()%:- matches zero or more characters.

--ESCAPE CHARACTER:
--must be one character only
--you can include the actual characters % or _ in pattern by using the ESCAPE character.
--Oracle consider it as character  instead of pattern matching special characters.

select * from employees
where first_name like 'R%'; --This means the first name start with cpital R.

select * from employees
where first_name like '%r'; --This means the first name ends with r.

select * from employees
where first_name like '%r%'; --This will give us the name contain r in the middle somewhere.

--here comes the escape character which means when we have to use or search for lirtal % or _
--that time we have to use \ escape character.

--MULTITABLE INSERT
--insert all
--insert first

--Unconditional insert all
--used to insert multiple records which is generated via driving query or constant values into multiple tables via single SQL statemtnt.
--syntax:
--INSERT ALL
--INTO table1 (column_list) values
--(expression_from_select_query_or_value)
--INTO table2 (column_list) values
--(expression_from_select_query_or_value)
--SELECT column_list FROM...


--TRANSPOSTING COLUMNS INTO ROWS
--Here we change the rows into columns and coumns into rows. 
--PIVOT:
--This clause is used to respose rows into columns. data like key-value pair can be concerted into columns.
--syntax:
--SELECT * FROM 
--  (your query with same data in rows)
--PIVOT
--(
--  AGGRIGATE_FUCNTION()
--  FOR COLUMN_NAME IN()
--)

















