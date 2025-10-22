--employee
--department
alter table department
drop constraint PK_DEP_NO;


select * from employee;
select * from department;

insert into employee(E_NO, E_NAME, E_ADRESS)
values(1, 'nasir ullah', 'lower chitral');
insert into employee(E_NO, E_NAME, E_ADRESS)
values(2, 'faizan alam', 'mogh');
insert into employee(E_NO, E_NAME, E_ADRESS)
values(3, 'mutasim', 'lahore');
insert into employee(E_NO, E_NAME, E_ADRESS)
values(4, 'aftab', 'karachi');
insert into employee(E_NO, E_NAME, E_ADRESS)
values(5, 'kamal', 'islamabad');
insert into employee(E_NO, E_NAME, E_ADRESS)
values(6, 'faisal', 'peshawar');

insert into department(DEP_NO, DEP_NAME, E_NO)
values(1001, 'computer', 1);
insert into department(DEP_NO, DEP_NAME, E_NO)
values(1001, 'computer', 2);
insert into department(DEP_NO, DEP_NAME, E_NO)
values(1002, 'english', 3);
insert into department(DEP_NO, DEP_NAME, E_NO)
values(1001, 'computer', 4);
insert into department(DEP_NO, DEP_NAME, E_NO)
values(1003, 'social science', 5);
insert into department(DEP_NO, DEP_NAME, E_NO)
values(1001, 'computer', 6);

select * from department;








