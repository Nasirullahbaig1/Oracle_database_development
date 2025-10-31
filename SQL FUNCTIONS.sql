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
        
        
        
        