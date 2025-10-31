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
        
        
        