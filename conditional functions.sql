--CONDITIONAL FUNCTIONS
select * from employees;

--DECODE:- The DECODE function is another way to implement conditional logic. 
--It performs similarly to a CASE expression but with a simpler syntax. 
--The DECODE function compares an expression with a set of values and returns a result based on the first matching value.

SELECT first_name, department_id, salary,
       DECODE(department_id, 50, 1.5 * salary,
                             12, 2.0 * salary,
                             salary) AS "REVISED SALARY"
FROM Employee;

--The above querry performs two functions 
--it searches dep_id column for the given if in dep_id and give the related result
--then it will move to the second sreach and compare it in the column and then give that result also.
--NOTE: usually null != to another null but in the case of decode null = null.
--because decode function uses is null clause while comparing two nulls. 

--CASE EXPRESSION:- The CASE expression is the most common and flexible conditional expression in SQL. 
--It allows us to perform conditional logic directly within our SELECT statement, 
--much like IF-THEN-ELSE logic in traditional programming languages.

SELECT first_name, department_id, salary,
       CASE department_id 
           WHEN 50 THEN 1.5 * salary
           WHEN 12 THEN 2.0 * salary
           ELSE salary
       END AS "REVISED SALARY"
FROM Employee;

select employee_id, first_name,
    case department_id 
        when 80 then 'Belong to HR dep'
        when 50 then 'Belong to IT dep'
        else 'unknown'
    end as discription
from employees;

--the key difference between these two functions if the flexlibility here we have more options to add conditons.
--the second difference is it do not uses is null function to compare null values so two null values are not equal here.
--if there are two conditoin that are true for a data then the first condition will be considered.
--because it execute from top to bottom if it matches the condition it won't go to the next condition.


--NUMARIC FUCTIONS
--these are the type of functions that work with numbers as the name indicates.
--Few common are below
--OPERATORS:- arthimatc operators +, -, *, /. These are the most common functions in any language.
select 1000 + 3000 from dual;
select EMPLOYEE_ID, FIRST_NAME, SALARY, SALARY*0.14 as SAL_INCREMENTS, SALARY + SALARY*0.14 AS TOTAL_SALARY from employees;
--In the above qurrey we can sum two columns and make another one

--ABS:- Absolute value of the number
--syntex: ABS(number)
--function of this function is like the mathimatics means it return the positve value always remove the negative sign.
select (1000-3000) from dual; --give negative value
select abs(1000-3000) from dual; -- give positive value

--CEIL FUNCTION:- Ceiling value of the given number this value if always greater then the exact value.
--syntex: CEIL(number)
--mostly use to get rid off the decimal points in columns like salary etc
select (20/3) from dual; --give:6.6666666
select ceil(20/3) from dual; --give:7

--FLOOR FUNCTION:- Floor value of the given number this value is less then the exact number.
--syntex: FLOOR(number)
select floor(20/3) from dual;

--MOD:- Accepts two arguments and provide the remaining of the first number divided by the second.
--syntax: MOD(1st number, 2nd number)
select (10/3) from dual;
select mod(10,3) from dual; --the mod funtion gives us the reminder in simple words.

--ROUND:- It round off the number. accepts two parameters first the number second the place to be rounded off.
--syntax: ROUND(number1, [place to be round off])
--It uses the round off rule when the number is 5.6 it will use the ceil funtion
--if it is 6.3 it will use the floor function.
select (10/3) from dual; --3.3333333
select round(10/3) from dual; --3 (using the floor function)
select 3.66666 from dual;
select round(3.66666) from dual; --4 (using the ceil function)
select round(3.66666, 2) from dual; --3.67 (round off till two decimal point)

--TRUNC:- Truncate the number
--it accepts two numbers and trucates the first number with the number of digits passed in the sencon parameter.
--syntax: TRUNC (number1, [number of place to truncated])
select trunc(14.769876987) from dual; -- 14
select trunc(14.769876987, 4) from dual; -- 14.7698
select trunc(14.769876987, 2) from dual; -- 14.76
--In simple words it truncate the values after decemal point that is been added to the second parameter.

--POWER:- it provides the power of one to other.
--syntax: POWER(NUMBER, POWER)
select power(10, 10) from dual; --100000000
select power(10, 2) from dual; --100







