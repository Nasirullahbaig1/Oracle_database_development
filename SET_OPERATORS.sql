--set operators
--set operators combine the result of two queries
--query with set operator is called compound query

--type of operators
--UNION
    --combine result of two queries
    --and removes the duplicates 
--UNION ALL
    --combine result from both quries
    --gives result without removing duplicateds
--MINUS
    --Minus query remove the result of the second query from the first query
--INTERSECT
    --provide the common records from both quries and also removes the duplicates.

create table sup (
    sup_id number,
    sup_name varchar(20),
    sup_salary number,
    sup_age number
);
create table mng (
    mng_id number,
    mng_name varchar(20),
    mng_salary number,
    mng_age number
);

insert into sup
values(1, 'nasir', 30000, 25);
insert into sup
values(2, 'kamal', 35000, 24);
insert into sup
values(1, 'nasir', 30000, 25);
insert into sup
values(3, 'faizan', 40000, 23);
insert into sup
values(4, 'aftab', 35000, 26);


insert into mng
values(5, 'faisal', 60000, 28);
insert into mng
values(2, 'kamal', 35000, 24);
insert into mng
values(1, 'nasir', 30000, 25);
insert into mng
values(6, 'danish', 20000, 21);
insert into mng
values(7, 'mutasim', 45000, 25);


select * from sup;
select * from mng;

--adding union between two tables
--it will give us a sorted table 
select * from sup 
union
select * from mng;
commit;

--adding union all bwtween two tables
--the output is not sorted
select * from sup
union all
select * from mng;
commit;

--minus between two columns
--give the result of tabel A and minus 
--with the reslut woth table B
select * from sup
minus
select * from mng;

--intersect
--give the common records
--remove the duplicates
select * from sup
intersect 
select * from mng;
commit;
