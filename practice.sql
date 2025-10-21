--course
--student

CREATE TABLE course (
    course_id     NUMBER,
    course_name   VARCHAR2(50) NOT NULL,
    course_credit NUMBER NOT NULL,
    CONSTRAINT pk_course_id PRIMARY KEY ( course_id )
);
desc course;
select * from course;

CREATE TABLE student (
    student_id      NUMBER,
    studnet_name    VARCHAR2(50) NOT NULL,
    student_fname   VARCHAR2(50),
    assigned_course NUMBER,
    CONSTRAINT pk_student_id PRIMARY KEY ( student_id ),
    CONSTRAINT fk_assigned_course FOREIGN KEY ( assigned_course )
        REFERENCES course ( course_id )
);
desc student;
select * from student;

commit;

INSERT into course(COURSE_ID, COURSE_NAME, COURSE_CREDIT)
values(1001, 'Programming fundementals', 3); 
INSERT into course(COURSE_ID, COURSE_NAME, COURSE_CREDIT)
values(1002, 'Machine Learning', 3);
INSERT into course(COURSE_ID, COURSE_NAME, COURSE_CREDIT)
values(1003, 'Islamic Studies', 2);
INSERT into course(COURSE_ID, COURSE_NAME, COURSE_CREDIT)
values(1004, 'Professional Practices', 3);
INSERT into course(COURSE_ID, COURSE_NAME, COURSE_CREDIT)
values(1005, 'Artificial Inteligence', 4); 
select * from course;

desc student;

alter table student
add enrolment_date date;

alter table student
add constraint CK_enrolment_date check (enrolment_date > date'2020-01-01');

INSERT into student(STUDENT_ID, STUDNET_NAME, STUDENT_FNAME, ASSIGNED_COURSE, ENROLMENT_DATE)
values(01, 'Nasir Ullah Baig', 'Karim Baig', 1001, date'2021-10-04'); 
INSERT into student(STUDENT_ID, STUDNET_NAME, STUDENT_FNAME, ASSIGNED_COURSE, ENROLMENT_DATE)
values(02, 'faizan Alam', 'Rehmat Juan', 1001, date'2021-10-04');
INSERT into student(STUDENT_ID, STUDNET_NAME, STUDENT_FNAME, ASSIGNED_COURSE, ENROLMENT_DATE)
values(03, 'Mujtaba', 'Adil', 1002, date'2020-10-04');
select * from student;

CREATE TABLE new_student (
    student_id      NUMBER,
    studnet_name    VARCHAR2(50) NOT NULL,
    student_fname   VARCHAR2(50),
    assigned_course NUMBER,
    CONSTRAINT pk_student_id_new PRIMARY KEY ( student_id ),
    CONSTRAINT fk_assigned_course_new FOREIGN KEY ( assigned_course )
        REFERENCES course ( course_id )
);

alter table new_student
add enrolment_date date;

commit;

select * from new_student;

--merge table student into new student
--target table and sourse table

merge into new_student t
using student s
on (s.student_id = t.student_id)
when not matched then
insert values (s.student_id, s.STUDNET_NAME, s.STUDENT_FNAME, s.ASSIGNED_COURSE, s.ENROLMENT_DATE)
when matched then
update set t.STUDNET_NAME=s.STUDNET_NAME, t.STUDENT_FNAME=s.STUDENT_FNAME, t.ASSIGNED_COURSE=s.ASSIGNED_COURSE, t.ENROLMENT_DATE=s.ENROLMENT_DATE;

commit;

update student
set student_fname = 'Adil khan'
where student_id = 3;

select * from student;

commit;

CREATE TABLE new_course (
    course_id     NUMBER,
    course_name   VARCHAR2(50) NOT NULL,
    course_credit NUMBER NOT NULL,
    CONSTRAINT pk_course_id_new PRIMARY KEY ( course_id )
);

select * from new_course;

merge into new_course t
using course s
on (s.course_id=t.course_id)
when not matched then
insert values(s.course_id, s.course_name, s.course_credit)
when matched then
update set t.course_name=s.course_name, t.course_credit=s.course_credit;

select * from new_course;

update course
set course_credit = 4
where course_id = 1001;

commit;

drop table new_course;
drop table new_student;

commit;

create table teacher(
    teacher_id number,
    teacher_name varchar2(50),
    teacher_course number,
    constraint PK_teacher_id primary key (teacher_id),
    constraint FK_teacher_course foreign key (teacher_course) references course(course_id)
);
commit;

select * from teacher;

insert into teacher(TEACHER_ID, TEACHER_NAME, TEACHER_COURSE)
values(3, 'atta hussain', 1002);

create table new_teacher(
    teacher_id number,
    teacher_name varchar2(50),
    teacher_course number,
    constraint PK_teacher_id_new primary key (teacher_id),
    constraint FK_teacher_course_new foreign key (teacher_course) references course(course_id)
);

commit;

merge into new_teacher t
using teacher s
on (s.teacher_id=t.teacher_id)
when not matched then
insert values(s.teacher_id, s.teacher_name, s.teacher_course)
when matched then
update set t.teacher_name=s.teacher_name, t.teacher_course=s.teacher_course;

select * from new_teacher;
commit;

alter table teacher
add salary number;

select * from teacher;

update teacher
set salary = 40000;

update teacher
set salary = salary + 3500
where teacher_id = 3;

merge into new_teacher t
using teacher s
on (s.TEACHER_ID=t.TEACHER_ID)
when not matched then
insert values (s.TEACHER_ID, s.TEACHER_NAME, s.TEACHER_COURSE)
when matched then
update set t.TEACHER_NAME=s.TEACHER_NAME, t.TEACHER_COURSE=s.TEACHER_COURSE;

select * from new_teacher;

select * from course;

select * from course
order by course_credit;

select * from course
order by course_credit desc;

select * from course
order by course_credit desc, course_id desc;

select * from course
order by course_credit desc
fetch first row only;

select * from course
order by course_credit desc
offset 2 rows
fetch first row only;

select * from course
order by course_credit desc
offset 2 rows
fetch first row with ties;

select * from teacher;

select * from teacher
order by salary
fetch first row only;

select * from teacher
order by salary
fetch first row with ties;















