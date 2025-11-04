--DATE FUNCTIONS IN ORACLE

--SYSDATE:- Returns current date and time of the oracle server.
alter session set nls_date_format= 'dd-mm-yyyy hh12:mi:ss';
select sysdate from dual;
select current_date, sysdate from dual;

select systimestamp from dual;
select current_timestamp from dual;

--EXTRACT:- extract the given field from time and date field.
--syntax: EXTRACT(FIELD FROM INPUT DATE AND TIME)
--field: YEAR, MONTH, DATE, HOUR, MINUTE, SECOND
select extract(month from sysdate) from dual;
select extract(year from sysdate) from dual;
select extract(day from sysdate) from dual;

--LASTDAY:- this function returns the last day of the month.
select last_day(sysdate) from dual;
select last_day(date'1920-03-16') from dual;

--MONTHS BETWEEN:- reurns the number of months between two dates.
--syntax: MONTHS_BETWEEN(INPUT_DATE1, INPUT_DATE2)
select months_between(sysdate, date'2002-03-18') from dual;
--normaly give the near date first and the far date second.

--NEXT DAY:- returns the next date on which the given day falls.
--syntax: NEXT_DAY(INPUT DATE, DAY)
select next_day(sysdate, 'sun') from dual;
--this function tell us the when is the next sunday from system date or current date or given date.

















