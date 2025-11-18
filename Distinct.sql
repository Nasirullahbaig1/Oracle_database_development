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










