--SEQUANCE IN ORACLE
--sequance is an object which can generate a unique number.
--Most used for creating a unique number for the primary key coulmn.
--Sequance number is incemented whenever any value is 
--generated out of it even when a trasaction is committed or rolled back.

--NEXTVAL(give next value of the sequance) and CURRVAL(give the current value of the sequance)
--can be used on a sequance.
--CURRVAL will only give you output if NEXTAVL is used in the same session before CURRVAL is used.
--syntax: CREATE SEQUANCE <SEQUANCE VALUE>
--        [MINVALUE <min_value>]
--        [MAXVALUE <max_value>]
--        [START WITH <value>]
--        [INCREMENT BY <increment_value>]
--        [CYCLE | NONCYCLE]
--        [CACHE <no_of_values_to_be_cached> | NONCACHE]

--Alter sequance - we can alter all the sequance perameters expect START WITH using ALTER SEQUANCE command.

create sequence basic_sequence;
select basic_sequence.nextval from dual;

create sequence sales_person_seq
minvalue 1
maxvalue 99999
start with 4
increment by 1;

select sales_person_seq.nextval from dual;
select sales_person_seq.nextval from dual;

create sequence jumping_seq
minvalue 1
maxvalue 9999999999
increment by 1000
start with 15;

select jumping_seq.nextval from dual; --5 times -- 4015

alter sequence jumping_seq 
increment by -3766;

select jumping_seq.nextval from dual;

alter sequence jumping_seq 
increment by 1;

select jumping_seq.nextval from dual;


