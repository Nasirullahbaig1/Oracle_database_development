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