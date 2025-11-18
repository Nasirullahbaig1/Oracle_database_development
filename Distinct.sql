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








