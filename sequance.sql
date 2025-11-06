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




