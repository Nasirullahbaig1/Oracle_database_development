--CHARACTAR FUNCTION IN ORACLE
--these function deal with strings take strings as input and give strings as output

--LOWER:- This function changes the upper case latters to lower case
--syntax: lower(string)
select lower(first_name) from employees;
--it return all the first name column in lower case.

--UPPER:- This function converst the string into upper case.
--syntax: upper(string)
select upper(first_name) from employees;
--this querry convert the whole first column into upper case
--we can use these two function while doing case sensitive searches.

--INITCAP:- Returns the input string in the initial character as upper case.
--syntax: INITCAP(STRING)
select * from employees;
select initcap(first_name) from employees;
select initcap('cow is on the road') from dual;

--LENGHT:- return the lenght of the given string.
--syntax: LENGHT(SRRING)
select EMPLOYEE_ID, FIRST_NAME, LENGHT(last_name) from employees;




