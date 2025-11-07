--PROBLEM 1
--write a query to select the rows from the table that have 'A' in one of the column.
--try not to use the OR clause.

CREATE TABLE table1(
    s_no number,
    col1 varchar2(1),
    col2 varchar2(1),
    col3 varchar2(1),
    col4 varchar2(1),
    col5 varchar2(1)
);

insert into table1 values(1, 'A', 'B', 'C', 'D', 'E');
insert into table1 values(2, NULL, 'A', 'B', 'C', 'D');
insert into table1 values(3, 'E', NULL, NULL, NULL, 'A');
insert into table1 values(4, NULL, 'A', 'E', NULL, 'D');
insert into table1 values(5, 'E', 'D', 'C', 'B', NULL);

SELECT * FROM table1;
commit;

--using OR clause
select * from table1
where col1= 'A' or col2= 'A' or col3='A' or col4='A' or col5='A';

--using the union all
select * from table1 where col1='A' union all
select * from table1 where col2='A' union all
select * from table1 where col3='A' union all
select * from table1 where col4='A' union all
select * from table1 where col5='A';

--More simple way using IN clause
select * from table1
where 'A' in (col1, col2, col3, col4, col5);

