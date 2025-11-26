select 'nasir ullah baig' as full_name, 
regexp_substr('Mustanisr billah', '[^ ]+', 1, 1) as first_name,
regexp_substr('Mustanisr billah', '[^ ]+', 1, 2) as Middle_name,
regexp_substr('Mustanisr billah', '[^ ]+', 1, 3) as last_name
from dual;

CREATE TABLE NAMES(
    FULLNAME VARCHAR2(20)
);
INSERT INTO NAMES(FULLNAME) 
VALUES ('NASIR ULLAH BAIG');
INSERT INTO NAMES(FULLNAME) 
VALUES ('FAIZAN ALAM');
INSERT INTO NAMES(FULLNAME) 
VALUES ('MUSTANSIR BILLAH');
INSERT INTO NAMES(FULLNAME) 
VALUES ('JAVEED');


SELECT * FROM NAMES;
--INSTR(string, substring, position, occurrence)
--SUBSTR(string, start_position, length)
SELECT FULLNAME,
NVL(SUBSTR(FULLNAME, 1, INSTR(FULLNAME, ' ', 1, 1) -1), FULLNAME) AS FIRST_NAME,--5
SUBSTR(FULLNAME,
        INSTR(FULLNAME, ' ', 1, 1) + 1, --7
        INSTR(FULLNAME, ' ', 1, 2) - INSTR(FULLNAME, ' ', 1, 1) - 1) AS middle_name_instr,--12 -6 -1 = 5
SUBSTR(FULLNAME,
           INSTR(FULLNAME, ' ', 1, DECODE(INSTR(FULLNAME, ' ', 1, 2), 0, 1, 2)) + 1,
           LENGTH(FULLNAME)) AS last_name_instr
FROM NAMES;

select fullname, INSTR(FULLNAME, ' ', 1, 1)-1 from names;