select * from course;
select * from student;
select * from teacher;

select * from student
order by enrolment_date desc;

update student
set enrolment_date = date'2023-02-11'
where student_id = 1;

select * from student
order by enrolment_date;

select * from student
order by enrolment_date desc;

commit;

select * from student
order by enrolment_date
offset 1 row
fetch next 2 row only;

select * from student
order by enrolment_date
fetch first row with ties;

create table employee(
    e_no number, 
    e_name varchar2(50) not null,
    e_adress varchar2(150),
    constraint PK_e_no primary key (e_no)
);

create table department(
    dep_no number,
    dep_name varchar2(50),
    e_no number,
    constraint PK_dep_no primary key (dep_no),
    constraint FK_e_no foreign key (e_no) references employee(e_no)
);

select * from employee;
select * from department;

commit;













