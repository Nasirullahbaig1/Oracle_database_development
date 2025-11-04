--DATE FUNCTIONS IN ORACLE

--SYSDATE:- Returns current date and time of the oracle server.
alter session set nls_date_format= 'dd-mm-yyyy hh12:mi:ss';
select sysdate from dual;
select current_date, sysdate from dual;

select systimestamp from dual;
select current_timestamp from dual;






