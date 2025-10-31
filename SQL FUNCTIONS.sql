--SQL FUNCTIONS
--Coversion function in sql
    --implicit conversion
        --Happens when oracle query expects value in format other than passed by user,
        --It tries to convert and use valid data type implicitly.
    --EXPLICIT data type conversion
        --Here we explicitly convert the data type.
        --TO CHAR:- Convert date, number and time stamp to character mostly used to fromat the data and display.  
        select to_char (123) from dual;
        select to_char (date'2021-03-12') from dual;
        select to_char (date'2021-03-12', 'dd-mm-yyyy') from dual;
        
        --TO NUMBER:- convert char string to number using given format model or default specified.
        select to_number ('03434298993') from dual;
        select to_number ('034,342', '98,993') from dual;
        
        --TO DATE:- convert char string to date using the given format.
        --There is a format called NLS format for date we either write in the format or specify our format like dd-mm-yyyy.
        select date'2021-03-30' from dual;
        select to_date('30-MAR-2021') from dual;
        select to_date('30-03-2021', 'dd-mm-yyyy') from dual;
        select to_date('03-2021-30', 'mm-yyyy-dd') from dual;
        --we can use yy and rr in the year format
        --rr means previoius centuery like 1900
        --yy means the currently centuery like 2000
        
--Null handeling function
--NVL:- replace null value with another value
select nvl(123,18) from dual;
select nvl(null,18) from dual;
--here we have replaced the null value in the department id with a default value using nvl.
select EMPLOYEE_ID, FIRST_NAME, DEPARTMENT_ID from employees order by EMPLOYEE_ID;
select EMPLOYEE_ID, FIRST_NAME, nvl(DEPARTMENT_ID, 10) from employees order by EMPLOYEE_ID;

--NVL2:- Its same as nvl but it accepts three parameters.NVL2(par1, par2, par3).
--if the first parameter is not null it will return the second value
--if the first parameter is null then it will return the third value
select nvl2('', 'tiger', 'lion') from dual;--first parameter is null it will return the third parameter.
select nvl2('apple', 'tiger', 'lion') from dual;--first parameter is not null it will reutrn the second parameter.
        
--COALESCE:- it accpts two or more paremeters and return the the furst not null value in the list.
--if all parameters contain null values then it return null vlaue.
select coalesce(123, 876, 4, 5) from dual;--return the first value.
select coalesce(null, 876, 4, 5) from dual;--return the second value.        
select coalesce(null, null, 4, 5) from dual;--return the third value.        
select coalesce(null, null, null, 5) from dual;--return the forth value.

--NULL IF:- Accept two parameters and returns NULL if both values are same else return the first parameter.
select nullif('4','4') from dual; --return null
select nullif(4, 4) from dual; --return null
select nullif (3, 5) from dual; --return 3

--LNNVL:- it accepts the expression and returns true if expression is false or unknown,
--returns falsel if expression is true.
select * from employees;
select * from employees where LNNVL(DEPARTMENT_ID > 90);
--for exaple in the above querry the condition is false for most of the data 
--but LNNLV convert the false into true and return those data
--the main differentce between this and NOT is it handles null as unknow and return ture for them as well

--CONDITIONAL FUNCTIONS
--DECODE:- it accepts one expression if the value matches with the first search parameters then returns the first result.
--if it matches with the second search parameter then returns the second result and so on.

        
        
        
        
        
        
        
        