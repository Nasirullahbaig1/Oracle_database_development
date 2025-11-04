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
select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, LENGTH(last_name) from employees;
select length('  abc  ') from dual; --the space is also count in the length

--SUBSTR(SUB-STRING):- return the sub string of the input string starting from position perameter to n characters.
--syntax: SUBSTR(STRING, POSITION, [NUMBER OF CHARACTERS])
select EMPLOYEE_ID, FIRST_NAME, SUBSTR(last_name, 2, 4) from employees;
select substr('nasirullahbaig', 6, 5) from dual; -- ullah

--INSTR:- it returns the first postion of the string in another string.
--syntax: INSTR(STRING, SEARCH STRING)
select instr('nasirullahbaig', 'ullah') from dual;

--REPLACE:- replaces one set of chars with another set of chars in the given string.
--syntax: REPLACE(input string, search string, [replace string])
select replace('nasirullagkhan', 'khan', 'baig') from dual;

--TRANSLATE:- replace the chars from one string with the chars of another string in a given string.
--syntax: TRANSALATE(INPUT STRING, SEARCH STRING, REPLACE STRING)
select translate('nasirullahkhan', 'khan', 'baig') from dual;
--it look like same as replace but its not same it look char by char and replace the matching cahrs.

--RPAD:- pad the given string in the right with number of characters passsed in the string.
--syntax: RPAD(INPUT STRING, LENGTH, CHAR TO PAD)
--In simple words it add char to the right side of the string
select rpad('nasirullahbaig', 20, 'sardar') from dual;
select EMPLOYEE_ID, LAST_NAME, rpad(last_name, 10, '*') from employees;
--the above query add the * char in the right side of the string till its lenght become 10

--LPAD:- Pad given string in the right with number of char passed in the string.
--syntx: LPAD(INPUT STRING, LENGTH, CHAR TO PAD)
select EMPLOYEE_ID, first_name, LAST_NAME, lpad(last_name, 10, first_name) from employees;
--it can be used when we have to add first name and last name toughter.

--RTRIM:- Trim the chars from the right side of the input string.
--syntax: RTRIM(INPUT STRING, CAHR TO TRIM)
select rtrim('nasirullahbaig', 'baig') from dual;
--this querry trip the mentioned chars from the right side of the string.

--LTRIM:- Trim the chars from the left side of the input string
--sytax: LTRIM(INPUT STRING, CHAR TO TRIM)
select ltrim('nasirullahbaig', 'nasir') from dual;

--TRIM:- this function can trim the given char from both side of the string.
--syntax: TRIM(CAHR TRIIM, FROM, INPUT STRING)
select trim('*' from '***nasirullahbaig****') from dual;
















