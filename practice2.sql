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





